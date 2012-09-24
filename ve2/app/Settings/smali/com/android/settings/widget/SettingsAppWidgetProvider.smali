.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# static fields
.field static final oM:Landroid/content/ComponentName;

.field private static oN:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static final oO:[I

.field private static final oP:[I

.field private static final oQ:[I

.field private static final oR:Lcom/android/settings/widget/e;

.field private static final oS:Lcom/android/settings/widget/e;

.field private static final oT:Lcom/android/settings/widget/e;

.field private static final oU:Lcom/android/settings/widget/e;

.field private static oV:Lcom/android/settings/widget/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oM:Landroid/content/ComponentName;

    .line 58
    sput-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oN:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 81
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oO:[I

    .line 87
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oP:[I

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oQ:[I

    .line 110
    new-instance v0, Lcom/android/settings/widget/p;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/p;-><init>(Lcom/android/settings/widget/l;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oR:Lcom/android/settings/widget/e;

    .line 111
    new-instance v0, Lcom/android/settings/widget/a;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/a;-><init>(Lcom/android/settings/widget/l;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oS:Lcom/android/settings/widget/e;

    .line 112
    new-instance v0, Lcom/android/settings/widget/w;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/w;-><init>(Lcom/android/settings/widget/l;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oT:Lcom/android/settings/widget/e;

    .line 113
    new-instance v0, Lcom/android/settings/widget/g;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/g;-><init>(Lcom/android/settings/widget/l;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oU:Lcom/android/settings/widget/e;

    return-void

    .line 81
    nop

    :array_0
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 87
    :array_1
    .array-data 0x4
        0x15t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
    .end array-data

    .line 93
    :array_2
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 871
    return-void
.end method

.method private A(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x66

    const/16 v3, 0x1e

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 820
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    .line 822
    if-eqz v6, :cond_0

    .line 823
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 824
    const-string v0, "screen_brightness"

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 828
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x6090007

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 830
    const-string v0, "screen_brightness_mode"

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 836
    :goto_0
    if-ne v0, v2, :cond_1

    move v0, v1

    move v2, v3

    .line 848
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x6090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness_mode"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 858
    :goto_2
    if-nez v0, :cond_0

    .line 859
    invoke-interface {v6, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 860
    const-string v0, "screen_brightness"

    invoke-static {v7, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 868
    :cond_0
    :goto_3
    return-void

    .line 839
    :cond_1
    if-ge v8, v4, :cond_2

    move v2, v4

    .line 840
    goto :goto_1

    .line 841
    :cond_2
    if-ge v8, v5, :cond_3

    move v2, v5

    .line 842
    goto :goto_1

    :cond_3
    move v0, v2

    move v2, v3

    .line 845
    goto :goto_1

    :cond_4
    move v0, v1

    .line 856
    goto :goto_2

    .line 863
    :catch_0
    move-exception v0

    .line 864
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 865
    :catch_1
    move-exception v0

    .line 866
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oN:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method private static a(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f02001c

    const/16 v4, 0x4c

    const v3, 0x7f08018c

    const v2, 0x7f08018b

    .line 676
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oR:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 677
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oS:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 678
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oT:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 679
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oU:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 681
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const v0, 0x7f02003e

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 684
    invoke-virtual {p0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 708
    :goto_0
    return-void

    .line 687
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->y(Landroid/content/Context;)I

    move-result v0

    .line 689
    const/16 v1, 0xcc

    if-le v0, v1, :cond_1

    .line 690
    const v1, 0x7f02003f

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 700
    :goto_1
    if-le v0, v4, :cond_3

    .line 701
    invoke-virtual {p0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 692
    :cond_1
    if-le v0, v4, :cond_2

    .line 693
    const v1, 0x7f020040

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 696
    :cond_2
    const v1, 0x7f020041

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 704
    :cond_3
    const v0, 0x7f020019

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 719
    const-class v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 720
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 722
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 724
    return-object v0
.end method

.method static synthetic dS()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oO:[I

    return-object v0
.end method

.method static synthetic dT()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oQ:[I

    return-object v0
.end method

.method static synthetic dU()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oP:[I

    return-object v0
.end method

.method static synthetic dV()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oN:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private static v(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 590
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oV:Lcom/android/settings/widget/u;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcom/android/settings/widget/u;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/u;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oV:Lcom/android/settings/widget/u;

    .line 593
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oV:Lcom/android/settings/widget/u;

    invoke-virtual {v0}, Lcom/android/settings/widget/u;->jg()V

    .line 595
    :cond_0
    return-void
.end method

.method static w(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter

    .prologue
    .line 636
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040080

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 638
    const v1, 0x7f08017e

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 640
    const v1, 0x7f08018a

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 643
    const v1, 0x7f080187

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 646
    const v1, 0x7f080184

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 648
    const v1, 0x7f080181

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 652
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->a(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 653
    return-object v0
.end method

.method public static x(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 662
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->w(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 664
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 665
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oM:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 666
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->v(Landroid/content/Context;)V

    .line 667
    return-void
.end method

.method private static y(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 779
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 788
    :goto_0
    return v0

    .line 786
    :catch_0
    move-exception v0

    .line 788
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static z(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 799
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 801
    if-eqz v2, :cond_1

    .line 802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 804
    if-ne v2, v0, :cond_0

    .line 809
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 804
    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrightnessMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 809
    goto :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 620
    const-class v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    .line 621
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 622
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 626
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oV:Lcom/android/settings/widget/u;

    if-eqz v0, :cond_0

    .line 627
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oV:Lcom/android/settings/widget/u;

    invoke-virtual {v0}, Lcom/android/settings/widget/u;->stopObserving()V

    .line 628
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oV:Lcom/android/settings/widget/u;

    .line 630
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 610
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 611
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 615
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->v(Landroid/content/Context;)V

    .line 616
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 735
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 736
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 737
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oR:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 768
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->x(Landroid/content/Context;)V

    .line 769
    :cond_1
    return-void

    .line 739
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oS:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 741
    :cond_3
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 742
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oT:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 743
    :cond_4
    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 745
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oU:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 746
    :cond_5
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 749
    if-nez v0, :cond_6

    .line 750
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oR:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/e;->r(Landroid/content/Context;)V

    goto :goto_0

    .line 751
    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 752
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->A(Landroid/content/Context;)V

    goto :goto_0

    .line 753
    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 754
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oU:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/e;->r(Landroid/content/Context;)V

    goto :goto_0

    .line 755
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 756
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oT:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/e;->r(Landroid/content/Context;)V

    goto :goto_0

    .line 757
    :cond_9
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 758
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->oS:Lcom/android/settings/widget/e;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/e;->r(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->w(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 603
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 604
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method
