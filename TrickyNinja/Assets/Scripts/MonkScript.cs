//Monk script
//Last edited by Deven Smith 4/2/2014
//Handles the monk enemy. The guy that runs up to you and then jumps before landing on you.

using UnityEngine;
using System.Collections;

public class MonkScript : EnemyScript {

	public float fInitSpeed; //The set "normal" speed of the monk.
	public float fMaxSpeed; //The maximum speed the monk is capable of.
	public float fMaxVelocity;
	public float fJumpHeight; //The maximum jump height that the monk will reach.
	public float fHorizontalKnockBack; //How far back the monk is knocked back when hit.
	public float fVerticalKnockBack; //How far up in the air the monk is knocked back when hit.
	public float fAliveDistance; //The farthest away the monk can be from the player before he is destroyed to free up computer resources.
	
	public GameObject goAttackBox;
	public GameObject goJumpAttackBox;
	public GameObject goVanishFX;

	GameManager scrptInput;
	
	GameObject gPlayer;		//The active player object.
	//GameObject[] agPlayer;	//The player array used to find the player.
	float fSpeed; //The current speed of the monk.
	float fVerticalSpeed; //The vertical speed of the monk when he begins his jump.
	float fYVelocity;
	float fXVelocity;
	public float fGroundDistance = 1.05f;
	bool bInAir; //Is the monk in the air?
	//bool bGrounded;
	bool bGrounded2;
	bool bBeenHit;
	public float fDestroyTimer = 2.0f;
	public float fKnockUpForce = 250f;
	bool bDead = false;//used to not trigger animator but tell him he is dead

	Animator aAnim;

	LayerMask lmGroundLayer;
	public string sGroundLayer;

	//testing
	void Awake()
	{
		lmGroundLayer = LayerMask.NameToLayer(sGroundLayer);
		fYVelocity = rigidbody.velocity.y;
		fXVelocity = rigidbody.velocity.x;
		aAnim = gCharacter.GetComponent<Animator>();
		fSpeed = fInitSpeed; //Set the current speed of the monk to the "normal", initial speed.
		fVerticalSpeed = fJumpHeight; //Set the vertical speed of the monk to its jump height.
		scrptInput = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameManager>();
		FindActivePlayer();
		bGoingLeft = true;
		bAttacking = true;
		bIsMonk = true;
		bInAir = false; //The monk does not start in the air.
		bGrounded = false;
		bGrounded2 = true;
		bBeenHit = false;
		
		Component[] components = gCharacter.GetComponentsInChildren(typeof(Rigidbody));
		foreach(Component c in components)
		{
			(c as Rigidbody).isKinematic = true;
		}
	}

	// Use this for initialization
	void Start () {
		lmGroundLayer = LayerMask.NameToLayer(sGroundLayer);
		fYVelocity = rigidbody.velocity.y;
		fXVelocity = rigidbody.velocity.x;
		aAnim = gCharacter.GetComponent<Animator>();
		fSpeed = fInitSpeed; //Set the current speed of the monk to the "normal", initial speed.
		fVerticalSpeed = fJumpHeight; //Set the vertical speed of the monk to its jump height.
		
		scrptInput = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameManager>();
		FindActivePlayer();

		bGoingLeft = true;
		bAttacking = true;
		bIsMonk = true;
		bInAir = false; //The monk does not start in the air.
		bGrounded = false;
		bGrounded2 = true;
		bBeenHit = false;

		Component[] components = gCharacter.GetComponentsInChildren(typeof(Rigidbody));
		foreach(Component c in components)
		{
			(c as Rigidbody).isKinematic = true;
		}
	}
	
	//Derived from the "Move" function of "EntityScript". It tells the enemies how to move.
	public override void Move()
	{
		MonkChasePlayer (); //Tell the monk to chase the player using the monk's own ChasePlayer method.
		MonkGravity(); //The monk has its own special gravity command.
		CustomAttack ();
	}
	
	//Derived from the "Die" function of "EntityScript".
	public override void Die()
	{
		Instantiate(goVanishFX, gRagdoll.transform.position, transform.rotation);
		Destroy (gameObject); //Destroy the current monk.
	}
	
	//The method that determines what happens when the player gets hurt.
	public override void Hurt(int aiDamage)
	{
		if(!bIncorporeal)
		{
			fHealth -= aiDamage;
			bInjured = true;
			Vector3 positionInfo = gPlayer.transform.position - transform.position;
			rigidbody.velocity = Vector3.zero;

			if (positionInfo.x < 0.0f)
			{
				rigidbody.velocity = new Vector3(fHorizontalKnockBack, fVerticalKnockBack, 0);
			}
			if (positionInfo.x > 0.0f)
			{
				rigidbody.velocity = new Vector3(-fHorizontalKnockBack, fVerticalKnockBack, 0);
			}
			Instantiate(gPow, new Vector3(transform.position.x, transform.position.y, transform.position.z+1), gPow.transform.rotation);
			bIncorporeal = true;
		}
	}
	
	//This keeps the monk falling back down to the ground after he jumps to attack the player.
	void MonkGravity()
	{
		RaycastHit hit1;
		if (Physics.Raycast(rigidbody.position, -transform.up, out hit1, fGroundDistance, lmGroundLayer.value) )
		{
			if (hit1.collider.tag == "Ground" )//|| hit1.collider.tag == "Enemy")
			{
				bGrounded = true;
				bGrounded2 = true;
				bIncorporeal = false;
				bInjured = false;
				bJumping = false;
				transform.position = new Vector3(transform.position.x, hit1.point.y + fGroundDistance, transform.position.z);
			}
			else
			{
				bGrounded = false;
				bGrounded2 = true;
			}

		}
		else
		{
			bGrounded = false;
			bGrounded2 = true;
		}

		if(bGrounded)
		{
			rigidbody.useGravity = false;
			rigidbody.velocity = new Vector3(rigidbody.velocity.x, 0.0f, 0.0f);
		}
		else 
			rigidbody.useGravity = true;

		DistanceKill();
	}
	
	void DistanceKill()
	{
		if (transform.position.x < gPlayer.transform.position.x - fAliveDistance || transform.position.x > gPlayer.transform.position.x + fAliveDistance)
		{

			Destroy (gameObject);
		}
	}
	
	void CustomAttack()
	{
		if (transform.position.x < gPlayer.transform.position.x + 1.05f && transform.position.x > gPlayer.transform.position.x - 1.05f 
		    && transform.position.y < gPlayer.transform.position.y)
		{
			bIncorporeal = false;
			rigidbody.AddForce(new Vector3(0.0f, 700.0f, 0.0f), ForceMode.Force);
			bGrounded = false;
			bGrounded2 = false;
			if (bGrounded == false)
			{
				fSpeed = 0.0f;
				rigidbody.velocity = new Vector3(0.0f, 0.0f, 0.0f);
			}
			else if (bGrounded2 == true)
			{
				fSpeed = fInitSpeed;
			}
		}
		else if (transform.position.x > gPlayer.transform.position.x + 1.05f || transform.position.x < gPlayer.transform.position.x - 1.05f)
		{
			fSpeed = fInitSpeed;

			if (bGrounded2 == false)
			{
				fSpeed = 0.0f;
			}
		}
		bIncorporeal = false;
	}
	
	//The special command that tells the monk how to chase the player.
	void MonkChasePlayer()
	{	
		if (bGrounded == true)
		{
			bJumping = false;

			if (gPlayer.transform.position.x > this.transform.position.x) //used rigibody, dont' know why -steven
			{
				if(bGoingLeft == true)
					transform.Rotate(new Vector3(0.0f, 180.0f, 0.0f));

				bGoingLeft = false;
				if(Mathf.Abs (rigidbody.velocity.x) < fMaxVelocity)
					rigidbody.AddForce (fSpeed*Time.deltaTime, 0.0f, 0.0f, ForceMode.Force);
			}
			if (gPlayer.transform.position.x < this.transform.position.x)
			{
				if(bGoingLeft == false)
					transform.Rotate(new Vector3(0.0f, 180.0f, 0.0f));

				bGoingLeft = true;
				if(Mathf.Abs (rigidbody.velocity.x) < fMaxVelocity)
					rigidbody.AddForce (-fSpeed*Time.deltaTime, 0.0f, 0.0f, ForceMode.Force);
				}
		}
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(!bDead)
		{
			FindActivePlayer();

			if(fYVelocity != 0.0f)
			{
				goJumpAttackBox.SetActive(true);
				goAttackBox.SetActive(false);
			}
			else
			{
				goJumpAttackBox.SetActive(false);
				goAttackBox.SetActive(true);
			}
			if(!bDie)
				Move (); //The monk's move method.
			else
				rigidbody.velocity = new Vector3(0,0,0);

			if (fHealth <= 0 && !bDie)
			{
				bInjured = false;
				bDie = false;
				bDead = true;
				rigidbody.isKinematic = true;
				SetUpRigidBody();
			}

			if(rigidbody.velocity.y > 0)
				bJumping = true;
			else 
				bJumping = false;
			fYVelocity = rigidbody.velocity.y;

			SendAnimatorBools();
		}
	}

	void SetUpRigidBody()
	{
		goAttackBox.SetActive(false);
		goJumpAttackBox.SetActive(false);
		collider.enabled = false;
		aAnim.enabled = false;
		Component[] components = gCharacter.GetComponentsInChildren(typeof(Rigidbody));
		foreach(Component c in components)
		{
			(c as Rigidbody).isKinematic = false;
		}

		GameObject root;
		root = gCharacter.transform.Find("katana_enemy:AnimationRig_V3_enemy:Character1_Reference/katana_enemy:AnimationRig_V3_enemy:Character1_Hips").gameObject;
		root.rigidbody.AddForce(Vector3.up * fKnockUpForce , ForceMode.Force);
		gameObject.SendMessage("DeathSound", SendMessageOptions.DontRequireReceiver);
		Invoke ("Die", fDestroyTimer);
	}

	void DisableRigidBodyAnim()
	{
		Animator aRagAnim = gRagdoll.GetComponent<Animator>();
		aRagAnim.enabled = false;
	}

	void FindActivePlayer()
	{
		gPlayer = scrptInput.GetActivePlayer();
	}

	void SendAnimatorBools()
	{
		aAnim.SetFloat("fYVelocity", fYVelocity);
		aAnim.SetBool("bDie", bDie);
		aAnim.SetBool("bFacingUp", bFacingUp);
		aAnim.SetBool("bAttacking", bAttacking);
		aAnim.SetBool("bJumping", bJumping);
		aAnim.SetBool("bGrounded", bGrounded);
		aAnim.SetBool("bGoingLeft", bGoingLeft);
		aAnim.SetBool("bInjured", bInjured);
		aAnim.SetBool("bIsSwordGuy", bIsSwordGuy);
		aAnim.SetBool("bIsMonk", bIsMonk);
		aAnim.SetBool("bIsNinja", bIsNinja);
	}
}
