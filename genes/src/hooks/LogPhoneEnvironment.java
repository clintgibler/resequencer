package hooks;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.Manifest;
import android.Manifest.permission;
import android.content.pm.PackageManager;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * This hook logs various attributes about the phone or emulator environment to file.
 * The info will saved to: /data/data/<app package>/files/environment.json
 * 
 * - This information can be useful if one is running apps multiple times with different 
 *   environment configurations. To add additional fields simply add to the hash in getEnvHash().
 * - Monolith.setAppContext() invokes this during its initial setup.
 * - "Hook Entry Activity" and "Hook Entry BroadcastReceiver" in hooks.xml handle calling 
 * 	  Monolith.setAppContext() on app startup.
 */
public class LogPhoneEnvironment {
	public static String getEnvironmentJson(Context context) {
		HashMap<String, String> hash = getEnvHash(context);
		return mapToJsonString(hash);
	}
	
	/**
	 * Currently store everything as String -> String. One day we'll use something better like
	 * Google gson.
	 * @param context
	 * @return
	 */
	public static HashMap<String, String> getEnvHash(Context context) {
		HashMap<String, String> hash = new HashMap<String, String>();
		if (context.checkCallingOrSelfPermission(Manifest.permission.READ_PHONE_STATE) == PackageManager.PERMISSION_GRANTED) {
			TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
			hash.put("dataActivity", String.valueOf(tm.getDataActivity()));
			hash.put("deviceId", tm.getDeviceId());
			hash.put("deviceSoftwareVersion", tm.getDeviceSoftwareVersion());
	        hash.put("line1Number", tm.getLine1Number());
	        hash.put("networkCountryIso,", tm.getNetworkCountryIso());
	        hash.put("networkOperator", tm.getNetworkOperator());
	        hash.put("networkOperatorName", tm.getNetworkOperatorName());
	        hash.put("simCountryIso", tm.getSimCountryIso());             // Returns the ISO country code equivalent for the SIM provider's country code.
	        hash.put("simOperator", tm.getSimOperator());                 // Returns the MCC+MNC (mobile country code + mobile network code) of the provider of the SIM.
	        hash.put("simOperatorName", tm.getSimOperatorName());         // Returns the Service Provider Name (SPN).
	        hash.put("simSerialNumber", tm.getSimSerialNumber());         // Returns the serial number of the SIM, if applicable.
	        hash.put("subscriberId", tm.getSubscriberId());               // Returns the unique subscriber ID, for example, the IMSI for a GSM phone.
	        hash.put("voiceMailAlphaTag", tm.getVoiceMailAlphaTag());     // Retrieves the alphabetic identifier associated with the voice mail number.
	        hash.put("voiceMailNumber", tm.getVoiceMailNumber());         // Returns the voice mail number.
		} else {
			
		}
	    // TODO grab system properties
        // http://developer.android.com/reference/java/lang/System.html#getProperties()
        return hash;		
	}
	
	public static String mapToJsonString(HashMap<String,String> hash) {
		String str = "{";
		// Java, I hate you so much. This would be 1 line of a good language
		Iterator<Map.Entry<String, String>> it = hash.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> pairs = (Map.Entry) it.next();
			
			str += "\t\"" + pairs.getKey() + "\": \"" + pairs.getValue() + '"';
			if (it.hasNext())
				str += ",";

			str += "\n";	
		}
		
		str += "}";
		return str;
	}
	
}
