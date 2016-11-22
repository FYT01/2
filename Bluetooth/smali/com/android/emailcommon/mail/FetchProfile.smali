.class public Lcom/android/emailcommon/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/FetchProfile$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/mail/Fetchable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstPart()Lcom/android/emailcommon/mail/Part;
    .locals 3

    .prologue
    .line 78
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Fetchable;

    .line 79
    .local v0, "o":Lcom/android/emailcommon/mail/Fetchable;
    instance-of v2, v0, Lcom/android/emailcommon/mail/Part;

    if-eqz v2, :cond_0

    .line 80
    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .end local v0    # "o":Lcom/android/emailcommon/mail/Fetchable;
    return-object v0

    .line 83
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
