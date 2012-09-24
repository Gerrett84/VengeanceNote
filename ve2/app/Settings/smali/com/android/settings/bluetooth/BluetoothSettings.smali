.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# instance fields
.field private final aL:Landroid/content/IntentFilter;

.field private ij:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

.field private ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private il:Landroid/preference/PreferenceGroup;

.field private im:Landroid/preference/PreferenceGroup;

.field private in:Z

.field private io:Z

.field private ip:Landroid/widget/TextView;

.field iq:Landroid/preference/Preference;

.field private final ir:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ir:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->aL:Landroid/content/IntentFilter;

    .line 102
    return-void
.end method

.method private a(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 248
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->T()V

    .line 335
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 337
    :goto_1
    return-void

    .line 250
    :pswitch_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 251
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->cY:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 255
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    if-nez v2, :cond_0

    .line 256
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x6090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 264
    :goto_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 265
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 266
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 268
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v2, :cond_1

    .line 269
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 271
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->t(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->a(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->il:Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_5

    .line 278
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->il:Landroid/preference/PreferenceGroup;

    .line 282
    :goto_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->il:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0b0178

    sget-object v4, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->qC:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 285
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->il:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 287
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->ar(I)V

    .line 290
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_6

    .line 291
    new-instance v3, Lcom/android/settings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    .line 295
    :goto_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0b0179

    sget-object v5, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->qD:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 298
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 299
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->in:Z

    .line 301
    if-nez v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->in:Z

    .line 306
    :cond_2
    if-nez v2, :cond_3

    .line 307
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->il:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    if-ne p2, v6, :cond_7

    .line 309
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->io:Z

    .line 310
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bL()V

    .line 317
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 262
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->iq:Landroid/preference/Preference;

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 280
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->il:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 293
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 312
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->in:Z

    if-nez v0, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 321
    :pswitch_1
    const v0, 0x7f0b0084

    .line 322
    goto/16 :goto_0

    .line 325
    :pswitch_2
    const v0, 0x7f0b0182

    .line 326
    goto/16 :goto_0

    .line 329
    :pswitch_3
    const v0, 0x7f0b0083

    goto/16 :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->U()V

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method private bL()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->in:Z

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->im:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->F(Z)V

    .line 225
    return-void
.end method


# virtual methods
.method S()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 116
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 120
    new-instance v2, Lmiui/widget/SlidingButton;

    invoke-direct {v2, v1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 122
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 123
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 124
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 127
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 131
    iput v0, v3, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 132
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 134
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 138
    :cond_1
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ij:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 141
    return-void
.end method

.method a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->du()V

    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 231
    return-void
.end method

.method public a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->T()V

    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(IZ)V

    .line 356
    return-void
.end method

.method b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->ip()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ir:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 350
    return-void
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h(I)V

    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(IZ)V

    .line 343
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->io:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ip:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 111
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 177
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v4

    .line 178
    if-eqz v4, :cond_2

    const v3, 0x7f0b0176

    .line 180
    :goto_2
    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    move v3, v1

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    const/4 v1, 0x2

    const v3, 0x7f0b0065

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 186
    const/4 v1, 0x3

    const v3, 0x7f0b005d

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 189
    const/4 v0, 0x4

    const v1, 0x7f0b007b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 176
    goto :goto_1

    .line 178
    :cond_2
    const v3, 0x7f0b0175

    goto :goto_2

    :cond_3
    move v3, v2

    .line 180
    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bL()V

    goto :goto_0

    .line 203
    :pswitch_1
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_2
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "visibility timeout"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ij:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ij:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->pause()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 171
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ij:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ij:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->resume()V

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ik:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->aL:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->M:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->io:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(IZ)V

    .line 159
    :cond_2
    return-void
.end method
