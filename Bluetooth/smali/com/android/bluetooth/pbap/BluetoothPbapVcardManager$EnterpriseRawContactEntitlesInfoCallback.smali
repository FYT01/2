.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnterpriseRawContactEntitlesInfoCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawContactEntitlesInfo(J)Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 729
    invoke-static {p1, p2}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 731
    sget-wide v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long v2, p1, v2

    .line 730
    invoke-direct {v0, v1, v2, v3}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;-><init>(Landroid/net/Uri;J)V

    return-object v0

    .line 733
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;-><init>(Landroid/net/Uri;J)V

    return-object v0
.end method
