<?php
/**
 * Page for displaying list of contact Subtypes
 */
class CRM_Admin_Page_WorldRegion extends CRM_Core_Page_Basic {

  /**
   * The action links that we need to display for the browse screen
   *
   * @var array
   * @static
   */
  static $_links = NULL;

  /**
   * Get BAO Name
   *
   * @return string Classname of BAO.
   */
  function getBAOName() {
    return 'CRM_Countrymanager_BAO_WorldRegion';
  }

  /**
   * Get action Links
   *
   * @return array (reference) of action links
   */
  function &links() {
    if (!(self::$_links)) {
      self::$_links = array( 
        CRM_Core_Action::UPDATE =>
        array(
          'name' => ts('Edit'),
          'url' => 'civicrm/admin/worldregion',
          'qs' => 'action=update&id=%%id%%&reset=1',
          'title' => ts('Edit World Region'),
        ),       
        CRM_Core_Action::DELETE =>
        array(
          'name' => ts('Delete'),
          'url' => 'civicrm/admin/worldregion',
          'qs' => 'action=delete&id=%%id%%',
          'title' => ts('Delete World Region'),
        ),
      );
    }
    return self::$_links;
  }

  function run() {    
    // $action = CRM_Utils_Request::retrieve('action', 'String', $this, FALSE, 0);
    // $this->assign('action', $action);
    // $id = CRM_Utils_Request::retrieve('id', 'Positive', $this, FALSE, 0);    

    // if (!$action) {      
    //   $this->browse();
    // }
    return parent::run();
  }

  function browse() {    
    $rows = CRM_Countrymanager_BAO_WorldRegion::getListWorldRegion();
    // $params = array();
    // $defaults = array();
    // CRM_Core_Error::debug(CRM_Countrymanager_BAO_WorldRegion::retrieve($params,$defaults));

    foreach ($rows as $key => $value) {
      $rows[$key]['action'] = CRM_Core_Action::formLink(self::links(), NULL,
        array('id' => $value['id'])
      );
    }
    $this->assign('rows', $rows);
  }

  /**
   * Get name of edit form
   *
   * @return string Classname of edit form.
   */
  function editForm() {
    return 'CRM_Admin_Form_WorldRegion';
  }

  /**
   * Get edit form name
   *
   * @return string name of this page.
   */
  function editName() {
    return 'World Region';
  }

  // /**
  //  * Get user context.
  //  *
  //  * @return string user context.
  //  */
  function userContext($mode = NULL) {
    return 'civicrm/admin/worldregion';
  }
}

