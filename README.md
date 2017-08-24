# **ATM CHALLANGE**
## *In order to use our Atm machine, we must first enter 'irb' into the Terminal and load the file we need:*
*irb* 
*2.2.3 :001 > load './lib/atm.rb'*

 *=> true*
 
 *2.2.3 :002 > load './lib/person.rb'*
 
 *=> true*
 
 *After that we can start to play around creating a person:* 
 > *person = Person.new({name: "**your_name**"})*
 

 _The name you put and a cash equal to 100 will be displayed_

*And then an account:*
> *account = person.create_account*


_This command will display all the attributes we need to create and account such as_   **pin code, balance, account status, owner, name, cash**



*Once the account has been created, let´s move on creating a new Atm:*
> *atm = Atm.new*


_At this point, a new Atm with funds equal to 1000 will be created_

*Let's deposit some cash now!:*
> *person.deposit (**amount of money in integer**)*


_Obviously the amount that you deposits will decrease the cash_


*That's why we need to withdraw now!:*
> *person.withdraw({amount: **amount in integer**, account:account, atm:atm, pin: **randomly generated in the account creation**})*

_After that, the amount you took will be displayed right after the code_

**And that's it, just play around and see how much cash you have left, and how much the atm has!**
