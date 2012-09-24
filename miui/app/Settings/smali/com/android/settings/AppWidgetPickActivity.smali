.class public Lcom/android/settings/AppWidgetPickActivity;
.super Lcom/android/settings/ActivityPicker;
.source "AppWidgetPickActivity.java"


# instance fields
.field private dt:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetId:I

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    if-eqz p2, :cond_0

    .line 237
    :goto_0
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 239
    return-void

    .line 236
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 172
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 173
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 175
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 178
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v1, v6, v7, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    if-nez v1, :cond_2

    .line 181
    const-string v6, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load icon drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    :goto_1
    new-instance v6, Lcom/android/settings/eh;

    invoke-direct {v6, p0, v5, v1}, Lcom/android/settings/eh;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settings/eh;->packageName:Ljava/lang/String;

    .line 189
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/eh;->className:Ljava/lang/String;

    .line 191
    if-eqz p2, :cond_3

    .line 192
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, v6, Lcom/android/settings/eh;->extras:Landroid/os/Bundle;

    .line 195
    :cond_3
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method protected eN()Ljava/util/List;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settings/AppWidgetPickActivity;->h(Ljava/util/List;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/AppWidgetPickActivity;->g(Ljava/util/List;)V

    .line 212
    new-instance v1, Lcom/android/settings/bS;

    invoke-direct {v1, p0}, Lcom/android/settings/bS;-><init>(Lcom/android/settings/AppWidgetPickActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    return-object v0
.end method

.method g(Ljava/util/List;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 89
    const-string v0, "customInfo"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const-string v0, "AppWidgetPickActivity"

    const-string v2, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v1, v3

    .line 132
    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/settings/AppWidgetPickActivity;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 133
    return-void

    .line 95
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v4

    .line 96
    :goto_1
    if-ge v2, v6, :cond_4

    .line 97
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 98
    if-eqz v0, :cond_2

    instance-of v0, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_3

    .line 100
    :cond_2
    const-string v0, "AppWidgetPickActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 96
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 105
    :cond_4
    const-string v0, "customExtras"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 106
    if-nez v2, :cond_5

    .line 108
    const-string v0, "AppWidgetPickActivity"

    const-string v3, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 109
    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 113
    if-eq v6, v5, :cond_7

    .line 114
    const-string v0, "AppWidgetPickActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    move-object v1, v3

    .line 116
    goto :goto_0

    .line 120
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    :cond_7
    if-ge v4, v5, :cond_9

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 122
    if-eqz v0, :cond_8

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 125
    :cond_8
    const-string v0, "AppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 126
    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_0
.end method

.method h(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->dt:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/AppWidgetPickActivity;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 228
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 140
    invoke-virtual {p0, p2}, Lcom/android/settings/AppWidgetPickActivity;->ag(I)Landroid/content/Intent;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AppWidgetPickActivity;->a(ILandroid/content/Intent;)V

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    .line 162
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/AppWidgetPickActivity;->dt:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AppWidgetPickActivity;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 157
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->dt:Landroid/appwidget/AppWidgetManager;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/AppWidgetPickActivity;->a(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    goto :goto_0
.end method
