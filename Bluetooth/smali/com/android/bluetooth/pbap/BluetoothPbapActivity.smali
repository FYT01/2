.class public Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPbapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;,
        Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_OBEX_AUTHKEY_MAX_LENGTH:I = 0x10

.field private static final DIALOG_YES_NO_AUTH:I = 0x1

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final KEY_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapActivity"

.field private static final V:Z


# instance fields
.field private mAlwaysAllowed:Landroid/widget/CheckBox;

.field private mAlwaysAllowedValue:Z

.field private mCurrentDialog:I

.field private mKeyView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionKey:Ljava/lang/String;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->V:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "BluetoothPbap"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->V:Z

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowedValue:Z

    .line 100
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 147
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "mRemoteName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 153
    const/4 v2, 0x0

    return-object v2

    .line 150
    :pswitch_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v3, 0x7f060078

    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "mMessage2":Ljava/lang/String;
    return-object v0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createView(I)Landroid/view/View;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 170
    return-object v2

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 166
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    return-object v0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onNegative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    const-string/jumbo v0, "com.android.bluetooth.pbap.authcancelled"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 186
    return-void
.end method

.method private onPositive()V
    .locals 3

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 176
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    const-string/jumbo v0, "com.android.bluetooth.pbap.authresponse"

    .line 178
    const-string/jumbo v1, "com.android.bluetooth.pbap.sessionkey"

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 177
    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 174
    return-void
.end method

.method private onTimeout()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 234
    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 235
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    if-ne v0, v3, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 236
    const v2, 0x7f06007b

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 246
    const-wide/16 v2, 0x7d0

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "extraName"    # Ljava/lang/String;
    .param p3, "extraValue"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "extraName"    # Ljava/lang/String;
    .param p3, "extraValue"    # Z

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private showPbapDialog(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 129
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 131
    :pswitch_0
    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 132
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 133
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 134
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 136
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->setupAlert()V

    .line 138
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    .line 139
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 275
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onPositive()V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onNegative()V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->showPbapDialog(I)V

    .line 117
    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    .line 124
    const-string/jumbo v4, "com.android.bluetooth.pbap.userconfirmtimeout"

    .line 123
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void

    .line 119
    :cond_0
    const-string/jumbo v2, "BluetoothPbapActivity"

    const-string/jumbo v3, "Error: this activity may be started only with intent PBAP_ACCESS_REQUEST or PBAP_AUTH_CHALL "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string/jumbo v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 253
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothPbapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V

    .line 250
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string/jumbo v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 278
    return-void
.end method
