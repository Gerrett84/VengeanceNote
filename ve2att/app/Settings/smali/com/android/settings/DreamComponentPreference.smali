.class public Lcom/android/settings/DreamComponentPreference;
.super Landroid/preference/Preference;
.source "DreamComponentPreference.java"


# instance fields
.field private final LV:Landroid/content/pm/PackageManager;

.field private final LW:Landroid/content/ContentResolver;

.field LX:Ljava/util/Comparator;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->sCollator:Ljava/text/Collator;

    .line 100
    new-instance v0, Lcom/android/settings/a;

    invoke-direct {v0, p0}, Lcom/android/settings/a;-><init>(Lcom/android/settings/DreamComponentPreference;)V

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->LX:Ljava/util/Comparator;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->LV:Landroid/content/pm/PackageManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->LW:Landroid/content/ContentResolver;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/DreamComponentPreference;->lr()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/DreamComponentPreference;->LV:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/DreamComponentPreference;)Ljava/text/Collator;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/DreamComponentPreference;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private lr()V
    .locals 3

    .prologue
    .line 78
    .line 79
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 82
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDreamComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/DreamComponentPreference;->LV:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DreamComponentPreference;->LV:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "(unknown)"

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 92
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/DreamComponentPreference;->LV:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DreamComponentPreference;->LV:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 93
    :catch_2
    move-exception v0

    .line 94
    const-string v0, "(unknown)"

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lcom/android/settings/aC;

    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/aC;-><init>(Lcom/android/settings/DreamComponentPreference;Landroid/content/Context;)V

    .line 209
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/settings/b;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/b;-><init>(Lcom/android/settings/DreamComponentPreference;Lcom/android/settings/aC;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 235
    return-void
.end method
