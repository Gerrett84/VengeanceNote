.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sC:I


# instance fields
.field private JI:Landroid/view/View$OnClickListener;

.field private final je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private ji:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 60
    sget v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sC:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 63
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sC:I

    .line 66
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 68
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 69
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->bI()V

    .line 75
    return-void
.end method

.method static synthetic c(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private kK()V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const v0, 0x7f0b0077

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    const v2, 0x7f0b006b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const v2, 0x7f0b006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->ji:Landroid/app/AlertDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v1, v4, v3, v2, v0}, Lcom/android/settings/bluetooth/Utils;->a(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->ji:Landroid/app/AlertDialog;

    .line 203
    return-void
.end method

.method private kL()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0174

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/Utils;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    :cond_0
    return-void
.end method

.method private kM()I
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 213
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 219
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->go()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 220
    invoke-virtual {v6, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->g(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v8

    .line 222
    packed-switch v8, :pswitch_data_0

    :cond_0
    move v0, v1

    move v1, v3

    move v3, v4

    :goto_1
    move v4, v3

    move v3, v1

    move v1, v0

    .line 241
    goto :goto_0

    .line 225
    :pswitch_0
    invoke-static {v8}, Lcom/android/settings/bluetooth/Utils;->al(I)I

    move-result v2

    .line 262
    :goto_2
    return v2

    :pswitch_1
    move v0, v1

    move v1, v3

    move v3, v5

    .line 229
    goto :goto_1

    .line 232
    :pswitch_2
    invoke-interface {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->m()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 233
    instance-of v8, v0, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v8, :cond_1

    move v0, v1

    move v3, v4

    move v1, v5

    .line 234
    goto :goto_1

    .line 235
    :cond_1
    instance-of v0, v0, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_0

    move v0, v5

    move v1, v3

    move v3, v4

    .line 236
    goto :goto_1

    .line 243
    :cond_2
    if-eqz v4, :cond_6

    .line 244
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 245
    const v2, 0x7f0b0071

    goto :goto_2

    .line 246
    :cond_3
    if-eqz v3, :cond_4

    .line 247
    const v2, 0x7f0b0070

    goto :goto_2

    .line 248
    :cond_4
    if-eqz v1, :cond_5

    .line 249
    const v2, 0x7f0b006f

    goto :goto_2

    .line 251
    :cond_5
    const v2, 0x7f0b006e

    goto :goto_2

    .line 255
    :cond_6
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 257
    :pswitch_3
    const v2, 0x7f0b0076

    goto :goto_2

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private kN()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->gn()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_1

    .line 269
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->go()Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 291
    invoke-interface {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 292
    if-eqz v0, :cond_0

    .line 305
    :goto_1
    return v0

    .line 271
    :sswitch_0
    const v0, 0x7f02005a

    goto :goto_1

    .line 274
    :sswitch_1
    const v0, 0x7f020054

    goto :goto_1

    .line 277
    :sswitch_2
    invoke-static {v2}, Lcom/android/settings/bluetooth/HidProfile;->c(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_1

    .line 280
    :sswitch_3
    const v0, 0x7f020058

    goto :goto_1

    .line 286
    :cond_1
    const-string v0, "BluetoothDevicePreference"

    const-string v3, "mBtClass is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_2
    if-eqz v2, :cond_4

    .line 297
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    const v0, 0x7f020056

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    const v0, 0x7f020057

    goto :goto_1

    :cond_4
    move v0, v1

    .line 305
    goto :goto_1

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->JI:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method public bI()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kM()I

    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kN()I

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 120
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter

    .prologue
    .line 164
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->f(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 150
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method kI()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method kJ()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kK()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->K(Z)V

    goto :goto_0

    .line 180
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kL()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 130
    const v0, 0x7f0800ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 138
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 139
    return-void

    .line 134
    :cond_2
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sC:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->JI:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->JI:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->je:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->b(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->ji:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->ji:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->ji:Landroid/app/AlertDialog;

    .line 93
    :cond_0
    return-void
.end method
