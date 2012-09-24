.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# instance fields
.field private final aJ:Landroid/content/IntentFilter;

.field private final jA:Landroid/view/View$OnClickListener;

.field private js:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

.field private jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private ju:Landroid/preference/PreferenceGroup;

.field private jv:Landroid/preference/PreferenceGroup;

.field private jw:Z

.field private jx:Z

.field private jy:Landroid/widget/TextView;

.field jz:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 404
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jA:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->aJ:Landroid/content/IntentFilter;

    .line 107
    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->R()V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 247
    return-void
.end method

.method private b(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->Q()V

    .line 381
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 383
    :goto_1
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 293
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->dj:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 297
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    if-nez v2, :cond_0

    .line 298
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    .line 301
    :cond_0
    sget-boolean v2, Lmiui/os/Build;->IS_XIAOMI:Z

    if-eqz v2, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bO()V

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x6090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 310
    :goto_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v2, :cond_2

    .line 315
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 317
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->t(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->a(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ju:Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_6

    .line 324
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ju:Landroid/preference/PreferenceGroup;

    .line 328
    :goto_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ju:Landroid/preference/PreferenceGroup;

    const v3, 0x7f0b017d

    sget-object v4, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->sJ:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ju:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 333
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->aA(I)V

    .line 336
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_7

    .line 337
    new-instance v3, Lcom/android/settings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    .line 341
    :goto_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0b017e

    sget-object v5, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->sK:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 344
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 345
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jw:Z

    .line 347
    if-nez v3, :cond_3

    .line 348
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jw:Z

    .line 352
    :cond_3
    if-nez v2, :cond_4

    .line 353
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ju:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    if-ne p2, v6, :cond_8

    .line 355
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jx:Z

    .line 356
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bN()V

    .line 363
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 308
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jz:Landroid/preference/Preference;

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 326
    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->ju:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 339
    :cond_7
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 358
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jw:Z

    if-nez v0, :cond_4

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 367
    :pswitch_1
    const v0, 0x7f0b0086

    .line 368
    goto/16 :goto_0

    .line 371
    :pswitch_2
    const v0, 0x7f0b0187

    .line 372
    goto/16 :goto_0

    .line 375
    :pswitch_3
    const v0, 0x7f0b0085

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bN()V
    .locals 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jw:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jv:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->C(Z)V

    .line 231
    return-void
.end method

.method private bO()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 252
    const-string v0, "rename_bluetooth"

    invoke-interface {v7, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const v0, 0x7f0b0738

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_3

    .line 263
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    const v2, 0x7f0b0739

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 270
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    :goto_2
    const-string v1, "profile_bluetooth_name"

    .line 275
    const-string v1, "profile_bluetooth_name"

    const-string v2, ""

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 280
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 281
    const-string v2, "profile_bluetooth_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method protected A()I
    .locals 1

    .prologue
    .line 437
    const v0, 0x7f0b065b

    return v0
.end method

.method P()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 121
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 125
    new-instance v2, Lmiui/widget/SlidingButton;

    invoke-direct {v2, v1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    .line 127
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 128
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 129
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 136
    iput v0, v3, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .line 137
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 139
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 143
    :cond_1
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->js:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 146
    return-void
.end method

.method a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->dS()V

    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 237
    return-void
.end method

.method public a(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->a(Landroid/preference/PreferenceGroup;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->Q()V

    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(IZ)V

    .line 402
    return-void
.end method

.method b(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->kE()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jA:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b(Landroid/view/View$OnClickListener;)V

    .line 433
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->g(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 396
    return-void
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->h(I)V

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(IZ)V

    .line 389
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jx:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jy:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jy:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 116
    return-void

    .line 112
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

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 182
    :goto_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v4

    .line 183
    if-eqz v4, :cond_2

    const v3, 0x7f0b017b

    .line 185
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

    .line 188
    const/4 v1, 0x2

    const v3, 0x7f0b0068

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    const/4 v1, 0x3

    const v3, 0x7f0b005e

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 194
    const/4 v0, 0x4

    const v1, 0x7f0b007d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 181
    goto :goto_1

    .line 183
    :cond_2
    const v3, 0x7f0b017a

    goto :goto_2

    :cond_3
    move v3, v2

    .line 185
    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->bN()V

    goto :goto_0

    .line 209
    :pswitch_1
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_2
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "visibility timeout"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
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
    .line 168
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->js:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->js:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->pause()V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 176
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->js:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->js:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->resume()V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jt:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->aJ:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->N:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->jx:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(IZ)V

    .line 164
    :cond_2
    return-void
.end method
