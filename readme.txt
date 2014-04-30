https://cfmitrah@bitbucket.org/cfmitrah/garudafw1.git



Admin menu group list:
  order by sort order
  id, sort order not needed
  is super admin - tick mark
  sort handle, up & down - Save sorting - Saravanamuthu

Admin menu group add / edit :
  sortOrder - No need - max + 1
  isSuperAdmin - CheckBox


Admin menu list:
  order by sort order
  id, sort order not needed
  is super admin & is hidden - tick mark
  Admin area group must be name not id
  sort handle, up & down - Save sorting - Saravanamuthu

Admin menu add / edit :
  AdminMenuGroup - select box from AdminMenuGroup table
  sortOrder - No need - max + 1
  isHidden & isSuperAdmin - CheckBox


Settings list:
  ID column not needed.
  IsSystem - tick mark
  orderBy isSystem, Title
  If any Settings have isSystem = 1 then, that can't be deleted - Saravanamuthu

Setting add /edit 
  isSystem - CheckBox
  If any Settings have isSystem = 1 then, Title, Variable, IsSystem fields can't be edited.


uicomponent list:
  Id, content fields not needed

uicomponent add edit:
  Content - CK editor - add Class richtextbox
  Template - select box from themes/#settings.theme#/uiComponentTemplates/*.cfm file

users List:
  Name (First & last name combined), user name & email - need to be shown
  Action - Login as this user

User add / edit:
  photo - File upload field
  thumb - Auto generated from photo
  summary & detailedBio - CK editor - add Class richtextbox 

User group list:
  ID not needed, Is admin & Is Super admin tick mark

User group Add / Edit:
  isAdmin & isSuperAdmin checkBoxes



List page:
  Columns : Title, Template, Nav
  Action (edit, delete, version history, view) - sort handle, up & down - Saravanamuthu
  Parent - Should show the parent page title
  Add to nav column
  Sorting

  
Add page: First 2 tabs will insert/update data into page & page content table

  Basic: 
    Title - text box
    startDate & end date - calendar
    isHidden, isSecure - Check box
    Not needed in form : parent_id, sortOrder, insertDate, modifiedDate
    Content - CK Editor - add Class richtextbox
  SEO:
    Link Title,  Url Title, Target, metaTitle
    metaKeywords, metaDescription  - Text area
    Page Link (link) - What is the use? 
  
  Not needed in form - isPublished, insertDate insertBy

  Layout & Objects : 
    Template -> select box from themes/#settings.theme#/*.cfm file - PageContent table

    Will save in Page_uicomponent table 
                    Left Column
    Content Objects [----V]     -->  []
                    Center Column   
                  -->  []
                    Right Column
                  -->  []

  User group : will insert in Page_usergroup table
    Checkboxes for all user groups except super admin


SaravanaMuthu:
----------------
Admin menu from DB
Need to work on the parent child pages  
filemanager - CKFinder or CFLove or KCFinder
"page_uiComponent","page_userGroup","pageContents" - Controller & view needs to be cleaned
Non-Deletable home page - SQL file needs to be modified
Admin area & admin area group should be in signle menu - 4 items - SQL needs to be modified
Use resource files, En & JP needs to be completed
Tool tip for every field
help & documentation
  http://johnny.github.io/jquery-sortable/#home
  https://ducksboard.com/services-integrations/