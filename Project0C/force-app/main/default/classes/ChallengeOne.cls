public class ChallengeOne {
    Integer num;
    String str;
    Account account;

    public void SetValues(){
        num = 0;
        str = 'string';
        account = new Account();
        account.Name = 'name';

    }


    public void GetValues(){
        System.debug(num + ' ' + str + ' ' + account);

}
}