@isTest
public class CreateAssignForceData {
    
    public static void createTrainingLocations(){
        List<Training_Location__c> locationsToCreate = new List<Training_Location__c>();
        List<String> officeNames = new List<String>{'Fairfax', 'SPS', 'Reston', 'UTA-ERB', 'USF-NEC', 'ASU', 'WVU-CBE', 'Queens', 'USF-SOC', 'Online', 'USF-BSN', 'UTA-PRS','UTA-KC'};
        List<String> shippingStreets = new List<String>{'10565 Fairfax Blvd', 'CUNY School of Processional Studies', 'Plaza America Office Park', 'UTA Engineering Research Building','USF Northwest Education Complex', 'SkySong Innovation Center', 'WVU College of Business and Economics', 'Tech Incubator at Queens College', 'USF Department of Sociology', 'Online', 'USF Muma College of Business', 'UTA Preston Hall', 'UTA Kalpana Chawla Hall'};
        List<String> shippingCities = new List<String>{'Fairfax', 'New York', 'Reston', 'Arlington', 'Tampa', 'Scottsdale', 'Morgantown', 'Queens', 'Tampa', 'Reston', 'Tampa', 'Arlington', 'Arlington'};    
        List<String> shippingStates = new List<String>{'Virginia', 'New York', 'Virginia', 'Texas', 'Florida', 'Arizona', 'West Virginia', 'New York', 'Florida', 'Virginia', 'Florida', 'Texas', 'Texas'};
            for(Integer i = 0; i < officeNames.size(); i++){
                Training_Location__c newTL = new Training_Location__c();
                newTL.OfficeName__c = officeNames[i];
                newTL.ShippingStreetAddress__c = shippingStreets[i];
                newTL.ShippingCity__c = shippingCities[i];
                newTL.ShippingState__c = shippingStates[i];
                locationsToCreate.add(newTL);
            }
        insert locationsToCreate;
    }
    
    public static void createTrainingRooms(){
        Map<String, ID> locMap = new Map<String, ID>();
        for(Training_Location__c tl : [SELECT Id, OfficeName__c FROM Training_Location__c]){
            locMap.put(tl.OfficeName__c, tl.Id);
        }
        List<Training_Room__c> roomsToCreate = new List<Training_Room__c>();
        /*Fairfax*/
        roomsToCreate.add(new Training_Room__c(Name = 'Galileo', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Tesla', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Newton', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Franklin', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Currie', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Copernicus', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Hawking', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'Einstein', TrainingLocation__c = locMap.get('Fairfax'), RoomCapacity__c = 16, Active__c = false, AVAvailability__c = 'Yes'));
        /*Online*/
        roomsToCreate.add(new Training_Room__c(Name = '1', TrainingLocation__c = locMap.get('Online'), RoomCapacity__c = 35, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = '2', TrainingLocation__c = locMap.get('Online'), RoomCapacity__c = 35, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = '3', TrainingLocation__c = locMap.get('Online'), RoomCapacity__c = 35, Active__c = true, AVAvailability__c = 'Yes'));
        /*Queens*/
        roomsToCreate.add(new Training_Room__c(Name = 'QC 16', TrainingLocation__c = locMap.get('Queens'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        /*Reston*/
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 202', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 214', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 208', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 201', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 35, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 203', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 35, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 204', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 209', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 206', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 25, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 207', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 205', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'HQ 452', TrainingLocation__c = locMap.get('Reston'), RoomCapacity__c = 40, Active__c = false, AVAvailability__c = 'Yes'));
        /*SPS*/
        roomsToCreate.add(new Training_Room__c(Name = 'SPS 216', TrainingLocation__c = locMap.get('SPS'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'SPS 220', TrainingLocation__c = locMap.get('SPS'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'SPS 204', TrainingLocation__c = locMap.get('SPS'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        /*USF-BSN*/
        roomsToCreate.add(new Training_Room__c(Name = 'BSN 1310', TrainingLocation__c = locMap.get('USF-BSN'), RoomCapacity__c = 40, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'BSN 1200', TrainingLocation__c = locMap.get('USF-BSN'), RoomCapacity__c = 40, Active__c = false, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'BSN 1400', TrainingLocation__c = locMap.get('USF-BSN'), RoomCapacity__c = 26, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'BSN 1304', TrainingLocation__c = locMap.get('USF-BSN'), RoomCapacity__c = 26, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'BSN 2301B', TrainingLocation__c = locMap.get('USF-BSN'), RoomCapacity__c = 15, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'BSN 2301C', TrainingLocation__c = locMap.get('USF-BSN'), RoomCapacity__c = 15, Active__c = true, AVAvailability__c = 'Yes'));
        /*USF-NEC*/
        roomsToCreate.add(new Training_Room__c(Name = 'NEC 200A', TrainingLocation__c = locMap.get('USF-NEC'), RoomCapacity__c = 26, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'NEC 300', TrainingLocation__c = locMap.get('USF-NEC'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'NEC 200B', TrainingLocation__c = locMap.get('USF-NEC'), RoomCapacity__c = 26, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'NEC 107', TrainingLocation__c = locMap.get('USF-NEC'), RoomCapacity__c = 24, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'NEC 328', TrainingLocation__c = locMap.get('USF-NEC'), RoomCapacity__c = 45, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'NEC 320', TrainingLocation__c = locMap.get('USF-NEC'), RoomCapacity__c = 28, Active__c = true, AVAvailability__c = 'Yes'));
        /*USF-SOC*/
        roomsToCreate.add(new Training_Room__c(Name = 'SOC 145', TrainingLocation__c = locMap.get('USF-SOC'), RoomCapacity__c = 30, Active__c = false, AVAvailability__c = 'Yes'));
        /*UTA-ERB*/
        roomsToCreate.add(new Training_Room__c(Name = 'UTA-ERB 324', TrainingLocation__c = locMap.get('UTA-ERB'), RoomCapacity__c = 40, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'UTA-ERB 334', TrainingLocation__c = locMap.get('UTA-ERB'), RoomCapacity__c = 40, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'UTA-ERB TBD', TrainingLocation__c = locMap.get('UTA-ERB'), RoomCapacity__c = 35, Active__c = true, AVAvailability__c = 'Yes'));
        /*UTA-KC*/
        roomsToCreate.add(new Training_Room__c(Name = 'KC M112', TrainingLocation__c = locMap.get('UTA-KC'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'KC M114', TrainingLocation__c = locMap.get('UTA-KC'), RoomCapacity__c = 25, Active__c = true, AVAvailability__c = 'Yes'));
        /*UTA-PRS*/
        roomsToCreate.add(new Training_Room__c(Name = 'UTA-PRS 306', TrainingLocation__c = locMap.get('UTA-PRS'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        /*WVU-CBE*/
        roomsToCreate.add(new Training_Room__c(Name = 'WVU-001', TrainingLocation__c = locMap.get('WVU-CBE'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'WVU-002', TrainingLocation__c = locMap.get('WVU-CBE'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        roomsToCreate.add(new Training_Room__c(Name = 'WVU-003', TrainingLocation__c = locMap.get('WVU-CBE'), RoomCapacity__c = 30, Active__c = true, AVAvailability__c = 'Yes'));
        
        insert roomsToCreate;
    }
    
    public static void createTrainingTracks(){
        List<Training_Track__c> tracksToCreate = new List<Training_Track__c>();
        List<String> names = new List<String>{'Big Data/Hadoop', 'Oracle Fusion Middleware', 'Full Stack .NET', 'Microservices', 'Business Analyst', 'ETL/Informatics', 'Web Tools', 'Dynamics CRM', 'Full Stack Java/JEE', 'Salesforce', 'System Admin', 'Full Stack JTA', 'Appian BPM'};
        List<String> shortNames = new List<String>{'Big Data', 'Oracle', '.NET', 'Microservices', 'BA', 'ETL', 'Web Tools', 'Dynamics', 'Java', 'Salesforce', 'SysAdmin', 'JTA', 'Appian'};
            for(Integer i = 0; i < names.size(); i++){
                tracksToCreate.add(new Training_Track__c(Active__c = true, Name = names[i], ShortName__c = shortNames[i]));
            }
        insert tracksToCreate;
    }
  
    public static void createExternalTrainers(){ //Script to create external trainers
        List<String> lastNames = new List<String> {'Mowbray', 'Rivers', 'Aufidius', 'Tyrrell', 'Ratcliffe', 'Andronicus', 'Montague', 'Lepidus', 'Brutus', 'Gurney', 'Bates', 'Lovell', 'Blunt'};
        List<String> firstNames = new List<String> {'Achilles', 'Donalbain', 'George', 'Hugh', 'Adriano', 'Mortimer', 'Caphis', 'Juno', 'Lychorinda', 'Alice', 'Silvia', 'Volumnia', 'Anna'};
        List<String> skills = new List<String>{'Appian BPM', 'Big Data/Hadoop', 'Business Analyst', 'Dynamics CRM', 'ETL/Informatics', 'Full Stack Java/JEE', 'Full Stack JTA', 'Microservices', 'Oracle Fusion Middleware', 'Other', 'Pega', 'Salesforce', 'System Admin', 'Web Tools'};
        List<String> locations = new List<String>{'Fairfax', 'SPS', 'Reston', 'UTA-ERB', 'USF-NEC', 'ASU', 'WVU-CBE', 'Queens', 'USF-SOC', 'Online', 'USF-BSN', 'UTA-PRS', 'UTA-K'};
        
            
        List<External_Trainer__c> trainers = new List<External_Trainer__c>();
        
        for (Integer i = 0; i < lastNames.size(); i++) {
            External_Trainer__c newTrainer = new External_Trainer__c();
            newTrainer.First_Name__c = firstNames[i];
            newTrainer.Last_Name__c = lastNames[i];
            newTrainer.Name = firstNames[i] + ' ' + lastNames[i];
            newTrainer.Training_Skills__c = skills[Integer.valueof((Math.random() * skills.size()))];
            newTrainer.Preferred_Location__c = locations[Integer.valueof((Math.random() * locations.size()))];
            trainers.add(newTrainer);
        }
        insert trainers;
    }
    
    public static void AssignLocations(){
        Schema.DescribeFieldResult locFr = User.CurrentLocation__c.getDescribe();
        Schema.DescribeFieldResult skillFr = User.Training_Skills__c.getDescribe();
        List<Schema.PicklistEntry> locPlEntries = locFr.getPicklistValues();
        List<Schema.PicklistEntry> skillPlEntries = skillFr.getPicklistValues();
        List<String> locNames = new List<String>();
        List<String> skillNames = new List<String>();

        for (Schema.PicklistEntry entry : locPlEntries){
            locNames.add(entry.getLabel());
        }
        for (Schema.PicklistEntry entry : skillPlEntries){
            skillNames.add(entry.getLabel());
        }
        Integer numLocs = locNames.Size();
        Integer numSkills = skillNames.Size();
        
        List<User> usrs = [select id from User where UserRole.Name='Trainer'];
        for (User usr : usrs){
            usr.CurrentLocation__c = locNames[Integer.valueof((Math.random() * numLocs))];
            usr.Training_Skills__c = skillNames[Integer.valueof((Math.random() * numSkills))];
        }
        
        update usrs;
    }
    
     public static void assignPreferedLocations(){
        List<User> users = [SELECT Id, Name, ProfileId, CurrentLocation__c FROM User WHERE ProfileId='00e2E000001fLsIQAU'];
        For(User currentUser : users){
            currentUser.Preferred_Location__c = currentUser.CurrentLocation__c;
        }
        update users;
    } 



    public static void createTrainers() { 
        List<String> lastNames = new List<String> {'Alagna', 'Bonds', 'Colson', 'Donnelly', 'Goshorn', 'Greer', 'Higgens', 'Hill', 'Jurczak',
            'Knighten', 'Kumar', 'Lessley', 'Orr', 'Rehm', 'Trainer'};
        List<String> firstNames = new List<String> {'Peter', 'Genesis', 'Jessica', 'Quintin', 'Mitchell', 'Damon', 'Emily', 'Harvey', 'Nickolas',
            'Jason', 'Arun', 'Ryan', 'Richard', 'Carolyn', 'External'};
                        
        ID profID = [SELECT Id FROM Profile WHERE Name = 'Trainer' LIMIT 1].id;
        ID roleID = [SELECT id,name FROM UserRole WHERE name = 'Trainer' LIMIT 1].id;
        
        List<User> trainers = new List<User>();
        
        for (Integer i = 0; i < lastNames.size(); i++) {
            User u1 = new User(ProfileId=profID, LastName=lastNames[i], FirstName=firstNames[i], Email='assignforcerevature@gmail.com', username=lastNames[i] + '@meaf.com', 
                               CompanyName='Revature', Title='Trainer', Alias=firstNames[i], TimeZoneSidKey='America/New_York', EmailEncodingKey='UTF-8',
                               LanguageLocaleKey='en_US',LocaleSidKey='en_US', Available__c='Available',UserRoleId=roleID, isActive=false);
            trainers.add(u1);
        }
        
        insert trainers;
    }

}