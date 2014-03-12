<?php

class CRM_Countrymanager_BAO_StateProvince extends CRM_Countrymanager_DAO_StateProvince{
	


	static function retrieve(&$params, &$defaults) {
    $stateProvince = new CRM_Countrymanager_DAO_StateProvince();
    $stateProvince->copyValues($params);
    if ($stateProvince->find(TRUE)) {
      CRM_Core_DAO::storeValues($stateProvince, $defaults);
      return $stateProvince;
    }
    return NULL;
  }
  static function addAndSave($params) {

    $stateProvince = new CRM_Countrymanager_DAO_StateProvince();
    $stateProvince->copyValues($params);
    $stateProvince->save();

    CRM_Core_DAO::storeValues($stateProvince, $defaults);

    if ($stateProvince->find(TRUE)) {      
      return $stateProvince;
    }

  }

	static function getListStateProvince($idStateProvince = 0) {
		$params = array();
			$sql = "
			SELECT * FROM `civicrm_state_province`
		";

		if($idStateProvince != 0) {
			$sql .= "WHERE	id = %1
			";
			$params[1] = array($fieldId, 'Integer');	
		}		

		$sql .= "ORDER BY name
		";
		

			$dao = CRM_Core_DAO::executeQuery($sql, $params);
			$stateProvince = array();
			while($dao->fetch()) {
				$stateProvince[$dao->id] = array("id" => $dao->id,"name" => $dao->name);				
		}		
		return $stateProvince;
	}
  
}