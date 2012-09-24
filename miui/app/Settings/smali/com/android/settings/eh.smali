.class public Lcom/android/settings/eh;
.super Ljava/lang/Object;
.source "ActivityPicker.java"


# static fields
.field protected static PF:Lcom/android/settings/dN;


# instance fields
.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/eh;->label:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/android/settings/eh;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/eh;->label:Ljava/lang/CharSequence;

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/eh;->R(Landroid/content/Context;)Lcom/android/settings/dN;

    move-result-object v0

    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dN;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/eh;->icon:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/eh;->packageName:Ljava/lang/String;

    .line 242
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/eh;->className:Ljava/lang/String;

    .line 243
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/android/settings/eh;->label:Ljava/lang/CharSequence;

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/settings/eh;->R(Landroid/content/Context;)Lcom/android/settings/dN;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/dN;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/eh;->icon:Landroid/graphics/drawable/Drawable;

    .line 228
    return-void
.end method


# virtual methods
.method protected R(Landroid/content/Context;)Lcom/android/settings/dN;
    .locals 3
    .parameter

    .prologue
    .line 208
    sget-object v0, Lcom/android/settings/eh;->PF:Lcom/android/settings/dN;

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 211
    new-instance v2, Lcom/android/settings/dN;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {v2, v1, v1, v0}, Lcom/android/settings/dN;-><init>(IILandroid/util/DisplayMetrics;)V

    sput-object v2, Lcom/android/settings/eh;->PF:Lcom/android/settings/dN;

    .line 213
    :cond_0
    sget-object v0, Lcom/android/settings/eh;->PF:Lcom/android/settings/dN;

    return-object v0
.end method

.method j(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/eh;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/eh;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/settings/eh;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/eh;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/settings/eh;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/settings/eh;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/settings/eh;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method
