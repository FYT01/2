.class Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserverEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushMsgInfo"
.end annotation


# instance fields
.field failedSent:Z

.field id:J

.field parts:I

.field partsDelivered:I

.field partsSent:I

.field phone:Ljava/lang/String;

.field resend:Z

.field retry:I

.field sendInProgress:Z

.field statusDelivered:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;

.field timestamp:J

.field transparent:I

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;JIILjava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;
    .param p2, "id"    # J
    .param p4, "transparent"    # I
    .param p5, "retry"    # I
    .param p6, "phone"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 825
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-wide p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->id:J

    .line 828
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->transparent:I

    .line 829
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->retry:I

    .line 830
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->phone:Ljava/lang/String;

    .line 831
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->uri:Landroid/net/Uri;

    .line 832
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->resend:Z

    .line 833
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->sendInProgress:Z

    .line 834
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->failedSent:Z

    .line 835
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->statusDelivered:I

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserverEmail$PushMsgInfo;->timestamp:J

    .line 826
    return-void
.end method
