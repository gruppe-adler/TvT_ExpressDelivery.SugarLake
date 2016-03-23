_mission =
"
<font size='18' color='#c0c0c0'>Story</font><br/>
2018, Vorderasien. Der syrische Bürgerkrieg greift weiter um sich. Der Nordiran steht unter der Kontrolle von sunnitischen Milizen. Auch das benachbarte Aserbaidschan ist politisch geschwächt.<br/>
Im Sumpfgebiet von Sugar Lake hat sich ein Ölmogul in einer verlassenen Militärbasis verschanzt. Die lokale Polizei vermutet, dass er regelmäßige Drogenlieferungen empfängt und hat den Koffer eines mutmaßlichen Kuriers mit einem Peilsender versehen. Dieser Koffer soll nun abgefangen werden bevor er die Basis erreicht, um die Drogen mit denen zu vergleichen, mit denen das Land seit einer Weile überschwemmt wird.<br/>
Doch die Operation steht in Gefahr. Ein Leck in den Reihen der Beamten verkauft seit einiger Zeit Informationen. Nun sind die russische Mafia und eine Splittergruppe der iranischen Milizen auf den Drogentransport aufmerksam geworden...
<br/><br/>
<font size='18' color='#c0c0c0'>Situation</font><br/>
Sie und Ihr Team sind gestern in Sugar Lake angekommen und haben Ihr Nachtlager aufgeschlagen. Nun warten Sie darauf, dass der Kurier sich auf den Weg macht und Sie den Peilsender empfangen können. Ihnen stehen drei Schlauchboote zur Verfügung. Außerdem sollten sich leere Zivilfahrzeuge und -boote finden lassen, die Sie benutzen können.
";

_faktionen =
"
<font size='18' color='#c0c0c0'>Rebellen</font><br/>
Die Rebellen wollen ihren Einfluss auf Aserbaidschan ausweiten. Zur weiteren Finanzierung von Waffen und Ausrüstung wäre dies der perfekte Moment, um in den Drogenhandel einzusteigen. Sie sind derzeit schlecht ausgerüstet und benutzen hauptsächlich alte, russische Waffen und selbstgebaute Sprengsätze.<br/><br/>
<font size='18' color='#c0c0c0'>Mafia</font><br/>
Die russische Mafia ist schon länger in Aserbaidschan aktiv. Seit einiger Zeit unterbietet eine bislang unbekannte Quelle ihre Drogenpreise und droht sie aus dem Markt zu drängen. Die Informationen des Polizeikommissars kamen wie gerufen. Jetzt ist es an der Zeit ein Zeichen zu setzen. Der Trupp für den heutigen Auftrag ist ein Haufen unberechenbarer Schwerkrimineller, der mit zeitgemäßen, russischen Waffen ausgerüstet ist.<br/><br/>
<font size='18' color='#c0c0c0'>Sondereinsatzkräfte</font><br/>
Die Sondereinsatzkräfte sind die bestausgebildetste, nichtmilitärische Einheit Aserbaidschans. Das Team für den heutigen Einsatz arbeitet zum Großteil schon lange zusammen und ist dementsprechend gut aufeinander eingespielt. Ihr Standardgewehr ist das israelische TAR-21. Außerdem führen sie einige Spezialwaffen mit sich.<br/><br/>
";

_spielablauf =
"
<font size='18' color='#c0c0c0'>Spielbeginn</font><br/>
Nach Missionsbeginn haben Sie kurz Zeit sich zu organisieren und einen Plan zu entwickeln. Ihnen wird ein Countdown angezeigt, nach dessen Ablauf Ihre Schlauchboote aufgeschlossen werden und das Spiel für Sie beginnt. Jedes Team bekommt einen unterschiedlich langen Countdown, der abhängig von der jeweiligen Startposition ist.
<br/><br/>
<font size='18' color='#c0c0c0'>Der Kurier</font><br/>
Der Kurier ist leicht bewaffnet. Er fährt seine eingezeichnete Route, solange er nichts zu befürchten hat und hält an den eingezeichneten Punkten kurz an um Ware auf- oder abzuladen. Am Umsetzpunkt verlädt er den Koffer auf einen LKW und bringt ihn damit zur Militärbasis. Er kann, muss aber nicht getötet werden, um in den Besitz des Koffers zu kommen.
<br/><br/>
<font size='18' color='#c0c0c0'>Der Koffer</font><br/>
Der Koffer wird im ACE-Cargo des Fahrzeuges des Kuriers mitgeführt. Er kann ausgeladen, gezogen, getragen und in ein anderes Fahrzeug eingeladen werden (ACE-Interaction). Sein spezieller Peilsender macht sich das Metall des Fahrzeuges zunutze, um möglichst große Reichweite zu erzielen. Er funktioniert daher nur, wenn der Koffer sich in einem Fahrzeug befindet.
<br/><br/>
<font size='18' color='#c0c0c0'>Spielende</font><br/>
Die Mission schlägt fehl, wenn der Kurier den Koffer bei der Militärbasis abliefert oder der Koffer zerstört wird (Fahrzeug mit Koffer im Cargo wird zerstört).
Ihr Team gewinnt, wenn Sie den Koffer 15 Minuten in Ihrer Abgabezone halten und die Zone kontrollieren. Die Abgabezone zählt als “kontrolliert”, solange Ihr Team zahlenmäßig die Übermacht innerhalb der Zone hat. Sollte der Koffer die Zone verlassen, oder Sie die Kontrolle verlieren, so wird die Zeit angehalten aber nicht zurückgesetzt, sondern läuft weiter sobald Sie den Koffer wieder hineinbringen und die Kontrolle wieder herstellen.
Außerdem gewinnt Ihr Team auch, wenn die beiden anderen Teams vollständig eliminiert werden.
";

player createDiaryRecord ["Diary", ["Spielablauf", _spielablauf]];
player createDiaryRecord ["Diary", ["Faktionen", _faktionen]];
player createDiaryRecord ["Diary", ["Mission", _mission]];
