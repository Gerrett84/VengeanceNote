.class public Lcom/android/settings/ApnSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final Be:Landroid/net/Uri;

.field private static final Bf:Landroid/net/Uri;

.field private static Bg:Z


# instance fields
.field private Bh:Lcom/android/settings/di;

.field private Bi:Lcom/android/settings/dX;

.field private Bj:Landroid/content/IntentFilter;

.field private final Bk:Landroid/content/BroadcastReceiver;

.field private kT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->Be:Landroid/net/Uri;

    .line 86
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->Bf:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/android/settings/cw;

    invoke-direct {v0, p0}, Lcom/android/settings/cw;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->Bk:Landroid/content/BroadcastReceiver;

    .line 328
    return-void
.end method

.method private R(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 267
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 271
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v2, Lcom/android/settings/ApnSettings;->Bf:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->hR()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/settings/ApnSettings;->Bg:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/settings/ApnSettings;->Bg:Z

    return p0
.end method

.method private static e(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter

    .prologue
    .line 117
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method static synthetic f(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->e(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method private hR()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    const-string v4, "name"

    aput-object v4, v2, v7

    const-string v4, "apn"

    aput-object v4, v2, v10

    const-string v4, "type"

    aput-object v4, v2, v11

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 166
    const-string v0, "apn_general_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 167
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 169
    const-string v1, "apn_mms_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 170
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->hT()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    .line 173
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 175
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    new-instance v9, Lcom/android/settings/cM;

    invoke-direct {v9, p0}, Lcom/android/settings/cM;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v9, v5}, Lcom/android/settings/cM;->setKey(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v9, v2}, Lcom/android/settings/cM;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v9, v4}, Lcom/android/settings/cM;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v9, v6}, Lcom/android/settings/cM;->setPersistent(Z)V

    .line 187
    if-eqz v8, :cond_0

    const-string v2, "mms"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v7

    .line 188
    :goto_1
    if-eqz v2, :cond_3

    .line 189
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    const v2, 0x60201a5

    invoke-virtual {v9, v2}, Lcom/android/settings/cM;->setIcon(I)V

    .line 194
    :goto_2
    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    move v2, v6

    .line 187
    goto :goto_1

    .line 192
    :cond_2
    const v2, 0x60201a6

    invoke-virtual {v9, v2}, Lcom/android/settings/cM;->setIcon(I)V

    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 200
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 201
    return-void
.end method

.method private hS()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method private hT()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 276
    .line 278
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnSettings;->Bf:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
    return-object v3
.end method

.method private hU()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 289
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 290
    sput-boolean v3, Lcom/android/settings/ApnSettings;->Bg:Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->Bh:Lcom/android/settings/di;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/android/settings/di;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/di;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/cw;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->Bh:Lcom/android/settings/di;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->Bi:Lcom/android/settings/dX;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 300
    new-instance v1, Lcom/android/settings/dX;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->Bh:Lcom/android/settings/di;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/dX;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->Bi:Lcom/android/settings/dX;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->Bi:Lcom/android/settings/dX;

    invoke-virtual {v0, v3}, Lcom/android/settings/dX;->sendEmptyMessage(I)Z

    .line 306
    return v3
.end method

.method static synthetic hV()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings/ApnSettings;->Be:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->Bj:Landroid/content/IntentFilter;

    .line 134
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 351
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 352
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b031a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0323

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 227
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 220
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->hS()V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->hU()Z

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->Bk:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 256
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->R(Ljava/lang/String;)V

    .line 263
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 241
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    :cond_0
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->kT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    .line 245
    const v2, 0x60201a6

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 248
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettings;->R(Ljava/lang/String;)V

    .line 249
    const v0, 0x60201a5

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 252
    :cond_2
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 239
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 362
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->Bk:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->Bj:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    sget-boolean v0, Lcom/android/settings/ApnSettings;->Bg:Z

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->hR()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method
