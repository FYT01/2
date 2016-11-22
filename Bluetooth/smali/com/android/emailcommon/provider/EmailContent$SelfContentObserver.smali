.class Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfContentObserver"
.end annotation


# instance fields
.field mContent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent;)V
    .locals 1
    .param p1, "content"    # Lcom/android/emailcommon/provider/EmailContent;

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;->mContent:Ljava/lang/ref/WeakReference;

    .line 347
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$SelfContentObserver;->mContent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent;

    .line 360
    .local v0, "content":Lcom/android/emailcommon/provider/EmailContent;
    if-eqz v0, :cond_0

    .line 361
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->onChange(Z)V

    .line 358
    :cond_0
    return-void
.end method
