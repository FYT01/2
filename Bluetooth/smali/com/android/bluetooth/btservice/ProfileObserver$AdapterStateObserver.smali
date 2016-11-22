.class Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/ProfileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterStateObserver"
.end annotation


# instance fields
.field private mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/ProfileObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/bluetooth/btservice/ProfileObserver;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    .line 56
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string/jumbo v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    const/16 v1, 0xa

    .line 63
    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileObserver$AdapterStateObserver;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/ProfileObserver;->-wrap0(Lcom/android/bluetooth/btservice/ProfileObserver;)V

    .line 61
    :cond_0
    return-void
.end method
