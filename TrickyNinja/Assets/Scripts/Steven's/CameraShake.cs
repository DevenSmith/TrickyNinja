﻿using UnityEngine;
using System.Collections;

public class CameraShake : MonoBehaviour 
{
	private Vector3 originPosition;
	private Quaternion originRotation;
	float shake_decay;
	float shake_intensity;
	public float shake_intensity_set;
	public float shake_decay_set;
	Quaternion ori;

	void Awake()
	{
		ori = transform.rotation;
	}
	void Update ()
	{
		originPosition = transform.position;
		if (shake_intensity > 0){
<<<<<<< HEAD
			//transform.position = originPosition + Random.insideUnitSphere * shake_intensity;
//			transform.rotation = new Quaternion(
//				originRotation.x ,//+ Random.Range (-shake_intensity,shake_intensity) * .02f,
//				originRotation.y + Random.Range (-shake_intensity,shake_intensity) * .2f,
//				originRotation.z, //+ Random.Range (-shake_intensity,shake_intensity) * .02f,
//				originRotation.w// + Random.Range (-shake_intensity,shake_intensity) * .02f
//				);
=======
			transform.position = originPosition + Random.insideUnitSphere * shake_intensity;
			transform.rotation = new Quaternion(
				originRotation.x ,//+ Random.Range (-shake_intensity,shake_intensity) * .02f,
				originRotation.y + Random.Range (-shake_intensity,shake_intensity) * .2f,
				originRotation.z, //+ Random.Range (-shake_intensity,shake_intensity) * .02f,
				originRotation.w// + Random.Range (-shake_intensity,shake_intensity) * .02f
				);
>>>>>>> upstream/master
			shake_intensity -= shake_decay;
		}
		else{
			transform.rotation = ori;
			gameObject.GetComponent<CameraFollow>().enabled = true;
		}
	}
	
	public void Shake(){
		//gameObject.GetComponent<CameraFollow>().enabled = false;
		//ori = transform.rotation;
		originPosition = transform.position;
		originRotation = transform.rotation;
		shake_intensity = shake_intensity_set;
		shake_decay = shake_decay_set;
	}
}