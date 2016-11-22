.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Msg"
.end annotation


# instance fields
.field flagRead:I

.field folderId:J

.field id:J

.field localInitiatedReadStatus:Z

.field localInitiatedSend:Z

.field localInitiatedShift:Z

.field oldFolderId:J

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field threadId:I

.field transparent:Z

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "id"    # J
    .param p4, "type"    # I
    .param p5, "threadId"    # I
    .param p6, "readFlag"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 839
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 832
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 833
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 834
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedReadStatus:Z

    .line 835
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    .line 836
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 837
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 840
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    .line 841
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 842
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    .line 843
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 839
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "id"    # J
    .param p4, "folderId"    # J
    .param p6, "readFlag"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 845
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 832
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->oldFolderId:J

    .line 833
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    .line 834
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedReadStatus:Z

    .line 835
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedShift:Z

    .line 836
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    .line 837
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 846
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    .line 847
    iput-wide p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    .line 848
    iput p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    .line 845
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 865
    if-ne p0, p1, :cond_0

    .line 866
    return v7

    .line 867
    :cond_0
    if-nez p1, :cond_1

    .line 868
    return v6

    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 870
    return v6

    :cond_2
    move-object v0, p1

    .line 871
    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 872
    .local v0, "other":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 873
    return v6

    .line 874
    :cond_3
    return v7
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 857
    const/16 v0, 0x1f

    .line 859
    .local v0, "prime":I
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 860
    .local v1, "result":I
    return v1
.end method
