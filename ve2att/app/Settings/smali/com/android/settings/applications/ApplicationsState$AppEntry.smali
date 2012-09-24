.class public Lcom/android/settings/applications/ApplicationsState$AppEntry;
.super Lcom/android/settings/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# instance fields
.field final hI:Ljava/io/File;

.field hJ:J

.field hK:J

.field hL:Z

.field hM:Landroid/content/pm/ApplicationInfo;

.field hN:Ljava/lang/String;

.field hO:Ljava/lang/String;

.field hP:Ljava/lang/String;

.field hQ:Z

.field hR:J

.field hS:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field final id:J

.field label:Ljava/lang/String;

.field size:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 120
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hI:Ljava/io/File;

    .line 121
    iput-wide p3, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    .line 122
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hQ:Z

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->k(Landroid/content/Context;)V

    .line 126
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 144
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hI:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 162
    :goto_0
    return v0

    .line 149
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hL:Z

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x602015f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0

    .line 153
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hL:Z

    if-nez v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hI:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hL:Z

    .line 158
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method bd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hS:Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hS:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hS:Ljava/lang/String;

    goto :goto_0
.end method

.method k(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hL:Z

    if-nez v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hI:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hL:Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hL:Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->hM:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method
