<?php

class CRM_Countrymanager_BAO_WorldRegion extends CRM_Countrymanager_DAO_WorldRegion{
	
	static function retrieve(&$params, &$defaults) {
    $worldRegion = new CRM_Countrymanager_DAO_WorldRegion();
    $worldRegion->copyValues($params);
    if ($worldRegion->find(TRUE)) {
      CRM_Core_DAO::storeValues($worldRegion, $defaults);
      return $worldRegion;
    }
    return NULL;
  }

	static function getListWorldRegion($idWorldRegion = 0) {
		$params = array();
			$sql = "
			SELECT * FROM `civicrm_worldregion`
		";

		if($idWorldRegion != 0) {
			$sql .= "WHERE	id = %1";
			$params[1] = array($fieldId, 'Integer');	
		}		

			$dao = CRM_Core_DAO::executeQuery($sql, $params);
			$worldRegion = array();
			while($dao->fetch()) {
				$worldRegion[$dao->id] = array("id" => $dao->id,"name" => $dao->name);				

		}		
		return $worldRegion;
	}
  
}