.class Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$StableState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string/jumbo v1, "StableState(): Entering Off State"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 156
    :pswitch_0
    const-string/jumbo v2, "BluetoothBondStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received unhandled state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v5

    .line 127
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v0, v3, v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap2(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;IZ)Z

    .line 159
    :goto_0
    return v6

    .line 130
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v2, v0, v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap3(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0

    .line 133
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 135
    .local v1, "newState":I
    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v2, v0, v1, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 141
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->-get2(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 143
    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-static {v2, v0, v1, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->-wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 150
    :cond_2
    const-string/jumbo v2, "BluetoothBondStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In stable state, received invalid newState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
