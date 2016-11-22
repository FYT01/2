.class public final Lcom/android/bluetooth/util/DevicePolicyUtils;
.super Ljava/lang/Object;
.source "DevicePolicyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->isBluetoothWorkContactSharingDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static isBluetoothWorkContactSharingDisabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string/jumbo v6, "device_policy"

    .line 31
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 34
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v6, "user"

    .line 33
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 35
    .local v5, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 36
    .local v1, "myUserId":I
    invoke-virtual {v5, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 40
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    new-instance v6, Landroid/os/UserHandle;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result v6

    return v6

    .line 46
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v6, 0x1

    return v6
.end method
