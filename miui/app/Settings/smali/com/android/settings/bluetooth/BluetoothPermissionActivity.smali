.class public Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private BY:Ljava/lang/String;

.field private BZ:Ljava/lang/String;

.field private CL:Landroid/widget/Button;

.field private Mt:Landroid/widget/TextView;

.field private Mu:Landroid/widget/CheckBox;

.field private Mv:Z

.field private Mw:Z

.field private kt:Landroid/bluetooth/BluetoothDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BY:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BZ:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    .line 62
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mw:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BY:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BZ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    if-eqz p3, :cond_1

    .line 216
    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    :cond_1
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 220
    return-void

    .line 211
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    return p1
.end method

.method private aZ(I)V
    .locals 2
    .parameter

    .prologue
    .line 250
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->t(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->eu()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->m(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ak(I)V

    .line 255
    return-void
.end method

.method static synthetic b(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 76
    return-void
.end method

.method private lA()Landroid/view/View;
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mt:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mt:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->ly()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private lB()Landroid/view/View;
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mt:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mt:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mu:Landroid/widget/CheckBox;

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mu:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mu:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private lC()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 181
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositive mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->aZ(I)V

    .line 186
    :cond_0
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->a(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 189
    return-void
.end method

.method private lD()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegative mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mv:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->aZ(I)V

    .line 197
    :cond_0
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->a(Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 201
    return-void
.end method

.method private lw()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 113
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 114
    const v1, 0x7f0b0088

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lA()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 116
    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 117
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 119
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->CL:Landroid/widget/Button;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 122
    return-void
.end method

.method private lx()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 126
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 127
    const v1, 0x7f0b008b

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lB()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 129
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 130
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 131
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 132
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->CL:Landroid/widget/Button;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 135
    return-void
.end method

.method private ly()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    if-nez v0, :cond_0

    const v0, 0x7f0b03c4

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    const v1, 0x7f0b008a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lz()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    if-nez v0, :cond_0

    const v0, 0x7f0b03c4

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    const v1, 0x7f0b008c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lC()V

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lD()V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "BluetoothPermissionActivity"

    const-string v1, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->kt:Landroid/bluetooth/BluetoothDevice;

    .line 92
    const-string v0, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BY:Ljava/lang/String;

    .line 93
    const-string v0, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->BZ:Ljava/lang/String;

    .line 94
    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 97
    if-ne v0, v3, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lw()V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mw:Z

    goto :goto_0

    .line 99
    :cond_1
    if-ne v0, v4, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->lx()V

    goto :goto_1

    .line 102
    :cond_2
    const-string v1, "BluetoothPermissionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: bad request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mw:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->Mw:Z

    .line 243
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method
