Testudo Takeoff
Desc: User inputs their current building location. If there is a testudo there, returns that building, If not, returns a random building with a testudo in their region. Controller will send a building to model. Model will look through database for that building and check boolean. If false it will query the database to look at all the buildings that are true and match the same region as the input building. The model will then send a random building from that list to the controller.
Input: Building Name
Output: Building Name
Database: Primary key, buildingName:string, testudoPresnt:boolean, region: string
