.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Event"
.end annotation


# static fields
.field static final PATH:Ljava/lang/String; = "telecom/msg/"


# instance fields
.field chatState:I

.field conversationID:J

.field conversationName:Ljava/lang/String;

.field datetime:Ljava/lang/String;

.field eventType:Ljava/lang/String;

.field folder:Ljava/lang/String;

.field handle:J

.field msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field oldFolder:Ljava/lang/String;

.field presenceState:I

.field presenceStatus:Ljava/lang/String;

.field priority:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field uci:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "folder"    # Ljava/lang/String;
    .param p6, "msgType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 646
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 600
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 603
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 604
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 605
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 606
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 607
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 609
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 611
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 612
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 613
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 647
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 648
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 649
    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 650
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 646
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "folder"    # Ljava/lang/String;
    .param p6, "msgType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p7, "datetime"    # Ljava/lang/String;
    .param p8, "subject"    # Ljava/lang/String;
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "priority"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 654
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 600
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 603
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 604
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 605
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 606
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 607
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 609
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 611
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 612
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 613
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 656
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 657
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 658
    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 659
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 660
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 661
    if-eqz p8, :cond_0

    .line 662
    invoke-static {p8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 664
    :cond_0
    if-eqz p9, :cond_1

    .line 665
    invoke-static {p9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 667
    :cond_1
    iput-object p10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "folder"    # Ljava/lang/String;
    .param p6, "msgType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p7, "datetime"    # Ljava/lang/String;
    .param p8, "subject"    # Ljava/lang/String;
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "priority"    # Ljava/lang/String;
    .param p11, "conversationID"    # J
    .param p13, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 674
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 675
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 676
    invoke-direct {p0, p5, p6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 677
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 678
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 679
    if-eqz p8, :cond_0

    .line 680
    invoke-static {p8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 682
    :cond_0
    if-eqz p9, :cond_1

    .line 683
    invoke-static {p9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 685
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-eqz v0, :cond_2

    .line 686
    iput-wide p11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 688
    :cond_2
    if-eqz p13, :cond_3

    .line 689
    invoke-static/range {p13 .. p13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 691
    :cond_3
    iput-object p10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 673
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "handle"    # J
    .param p5, "folder"    # Ljava/lang/String;
    .param p6, "oldFolder"    # Ljava/lang/String;
    .param p7, "msgType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 629
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 600
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 603
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 604
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 605
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 606
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 607
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 609
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 611
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 612
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 613
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 631
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 632
    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    .line 633
    invoke-direct {p0, p5, p7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 634
    if-eqz p6, :cond_2

    .line 635
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p7, v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p7, v0, :cond_1

    .line 636
    :cond_0
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 643
    :goto_0
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 630
    return-void

    .line 638
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_0

    .line 641
    :cond_2
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "uci"    # Ljava/lang/String;
    .param p4, "msgType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "priority"    # Ljava/lang/String;
    .param p7, "lastActivity"    # Ljava/lang/String;
    .param p8, "conversationID"    # J
    .param p10, "conversationName"    # Ljava/lang/String;
    .param p11, "presenceState"    # I
    .param p12, "presenceStatus"    # Ljava/lang/String;
    .param p13, "chatState"    # I

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 698
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    .line 699
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    .line 700
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 701
    if-eqz p5, :cond_0

    .line 702
    invoke-static {p5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    .line 704
    :cond_0
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    .line 705
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    .line 706
    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-eqz v0, :cond_1

    .line 707
    iput-wide p8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    .line 709
    :cond_1
    if-eqz p10, :cond_2

    .line 710
    invoke-static {p10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    .line 712
    :cond_2
    if-eqz p11, :cond_3

    .line 713
    iput p11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    .line 715
    :cond_3
    if-eqz p12, :cond_4

    .line 716
    invoke-static {p12}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 718
    :cond_4
    if-eqz p13, :cond_5

    .line 719
    iput p13, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    .line 697
    :cond_5
    return-void
.end method

.method private setFolderPath(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v0, 0x0

    .line 618
    if-eqz p1, :cond_2

    .line 619
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p2, v0, :cond_1

    .line 620
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    .line 617
    :goto_0
    return-void

    .line 622
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_0

    .line 625
    :cond_2
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public encode()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xb

    const/16 v5, 0x100

    .line 724
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 725
    .local v3, "sw":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 728
    .local v4, "xmlEvtReport":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 729
    const-string/jumbo v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 730
    const-string/jumbo v6, "\r\n"

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    const-string/jumbo v6, ""

    const-string/jumbo v7, "MAP-event-report"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 732
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    .line 733
    const-string/jumbo v6, ""

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.0"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 739
    :goto_0
    const-string/jumbo v6, ""

    const-string/jumbo v7, "event"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    const-string/jumbo v6, ""

    const-string/jumbo v7, "type"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 741
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ConversationChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 742
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ParticipantPresenceChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 741
    if-nez v6, :cond_0

    .line 743
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ParticipantChatStateChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 741
    if-eqz v6, :cond_11

    .line 744
    :cond_0
    const-string/jumbo v6, ""

    const-string/jumbo v7, "participant_uci"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->uci:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 751
    const-string/jumbo v6, ""

    const-string/jumbo v7, "folder"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 754
    const-string/jumbo v6, ""

    const-string/jumbo v7, "old_folder"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v6, :cond_3

    .line 760
    const-string/jumbo v6, ""

    const-string/jumbo v7, "msg_type"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 765
    const-string/jumbo v6, ""

    const-string/jumbo v7, "datetime"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 768
    const-string/jumbo v7, ""

    const-string/jumbo v8, "subject"

    .line 769
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_12

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 768
    invoke-interface {v4, v7, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 772
    const-string/jumbo v6, ""

    const-string/jumbo v7, "senderName"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    :cond_6
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 775
    const-string/jumbo v6, ""

    const-string/jumbo v7, "priority"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v6

    if-le v6, v11, :cond_d

    .line 781
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 782
    const-string/jumbo v6, ""

    const-string/jumbo v7, "conversation_name"

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 784
    :cond_8
    iget-wide v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 786
    const-string/jumbo v6, ""

    const-string/jumbo v7, "conversation_id"

    .line 787
    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->conversationID:J

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v8

    .line 786
    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    :cond_9
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v7, "ParticipantPresenceChanged"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 790
    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    if-eqz v6, :cond_a

    .line 792
    const-string/jumbo v6, ""

    const-string/jumbo v7, "presence_availability"

    .line 793
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceState:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 792
    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    :cond_a
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 797
    const-string/jumbo v6, ""

    const-string/jumbo v7, "presence_status"

    .line 798
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    .line 799
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->presenceStatus:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v5, :cond_b

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :cond_b
    const/4 v9, 0x0

    .line 798
    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 797
    invoke-interface {v4, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    :cond_c
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v6, "ParticipantPresenceChanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 803
    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    if-eqz v5, :cond_d

    .line 805
    const-string/jumbo v5, ""

    const-string/jumbo v6, "chat_state"

    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->chatState:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 810
    :cond_d
    const-string/jumbo v5, ""

    const-string/jumbo v6, "event"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 811
    const-string/jumbo v5, ""

    const-string/jumbo v6, "MAP-event-report"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 821
    :goto_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get0()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_e
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    .line 734
    :cond_f
    :try_start_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->-get2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I

    move-result v6

    if-ne v6, v11, :cond_10

    .line 735
    const-string/jumbo v6, ""

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.1"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 813
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 737
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_10
    :try_start_2
    const-string/jumbo v6, ""

    const-string/jumbo v7, "version"

    const-string/jumbo v8, "1.2"

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 815
    :catch_1
    move-exception v2

    .line 816
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 746
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_11
    :try_start_3
    const-string/jumbo v6, ""

    const-string/jumbo v7, "handle"

    .line 747
    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v8

    .line 746
    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 817
    :catch_2
    move-exception v0

    .line 818
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BluetoothMapContentObserver"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :cond_12
    move v6, v5

    .line 769
    goto/16 :goto_2
.end method
