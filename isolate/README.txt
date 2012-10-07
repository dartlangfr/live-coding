Step 1.1:
  spawnFunction(timer1);
  Lancer le premier timer dans un isolate : les variables ne sont pas partagées.
  
Step 1.2:
  spawnFunction(timer2);
  Si l'isolate principal se termine, la VM entière se termine aussi

Step 2:
  SendPort sender1 = spawnFunction(timer1);
  sender1.call("Start !").then((msg) => print("main : $msg"));
  
  port.receive((msg, reply) {
    print("$name : $msg");
    new Timer.repeating(1000, (t) {
       tick(name);
       reply.send("$name : $counter");
    });
  });
  La méthode call ne s'attend qu'à un seul retour de message.
  Le main est fermé si timer2 est lancé dans un isolate.
  
Step 3:
  ReceivePort receiver1 = new ReceivePort();
  receiver1.receive((msg, reply) => print("main : $msg"));
  sender1.send("Start !", receiver1.toSendPort());

  Créer un ReceivePort qui traitera tous les messages. Le ReceivePort n'est pas fermé, le main reste ouvert, la VM aussi.
  
