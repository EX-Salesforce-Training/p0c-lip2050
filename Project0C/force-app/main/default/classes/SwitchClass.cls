public class SwitchClass {
    private String greetingVar = 'Hello';
     public void switchMethod(){
        String helloNationality = 'unknown';
        switch on greetingVar{
            when 'Hello'{
                helloNationality = 'USA';
                system.debug('Greeting: ' + greetingVar);
                system.debug('Nation: ' + helloNationality);
                greetingVar = 'Konnichiwa';
               }
            when 'Konnichiwa'{
                helloNationality = 'Japan';
                system.debug('Greeting: ' + greetingVar);
                system.debug('Nation: ' + helloNationality);
                greetingVar = 'Hola';
            }
            when 'Hola'{
                helloNationality = 'Spain';
                system.debug('Greeting: ' + greetingVar);
                system.debug('Nation: ' + helloNationality);
                greetingVar = 'Bonjour';
            }
            when 'Bonjour'{
                helloNationality = 'France';
                system.debug('Greeting: ' + greetingVar);
                system.debug('Nation: ' + helloNationality);
                greetingVar = 'Hello';
            } when else {
                system.debug('Unknown Greeting');
                greetingVar = 'Hello';
            }
        }
    }

}