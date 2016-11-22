.class Lcom/android/bluetooth/opp/BluetoothOppService$3;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->-wrap8(Landroid/content/ContentResolver;)V

    .line 174
    return-void
.end method
