﻿//Cheats script.
//Contains little cheat codes to help you get farther in the game, faster.
//Should probably be renamed, but it's nice to keep the cheats script secret sometimes.

using UnityEngine;
using System.Collections;

public class SpawnScript : EntityScript {

	public GameObject gNinja;
	public GameObject Player;
	GameObject gPlayer;

	// Use this for initialization
	void Start () {
		gPlayer = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.N)) //If the user presses "N"
		{
			Instantiate (gNinja, gPlayer.transform.position, gPlayer.transform.rotation); //Create a ninja enemy.
		}
		if (Input.GetKey (KeyCode.M) && Input.GetKeyDown (KeyCode.O)) //If the user presses "M" and "O" at the same time...
		{
			gPlayer.transform.position = new Vector3(-108.0f, -65, 25.0f); //Move the bottom of the cliff right before the lake.
		}
		if (Input.GetKey (KeyCode.M) && Input.GetKeyDown (KeyCode.V)) //If the player presses "M" and "V" at the same time...
		{
			gPlayer.transform.position = new Vector3(-150.0f, -73.0f, 25.0f); //Move the player to right after the ramp coming out of the lake.
		}
		if (Input.GetKey (KeyCode.M) && Input.GetKeyDown (KeyCode.R)) //If the player presses "M" and "R" at the same time...
		{
			gPlayer.transform.position = new Vector3(-6.0f, 1.02f, 25.0f); //Reset the player pretty close to its initial position.
		}
	}
}

