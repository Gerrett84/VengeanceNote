.class public Lcom/android/settings/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private dt:Landroid/widget/CheckBox;

.field private du:Landroid/content/ComponentName;

.field private dv:Ljava/lang/String;

.field private dw:Landroid/appwidget/AppWidgetManager;

.field private dx:Z

.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 53
    if-ne p2, v1, :cond_1

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 56
    iget v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->du:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dw:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->du:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v1, "EXTRA_APPWIDGET_ID"

    iget v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dw:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dw:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 73
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v0, "BIND_APPWIDGET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error binding widget with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->du:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    const-string v0, ""

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    const-string v0, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 90
    const-string v0, "appWidgetProvider"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->du:Landroid/content/ComponentName;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 107
    const v0, 0x7f0b0484

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 108
    const v0, 0x7f0b0485

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 109
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 110
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 111
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 115
    const v3, 0x1090027

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 116
    iget-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020258

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    .line 117
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    const v2, 0x7f0b0486

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 125
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dw:Landroid/appwidget/AppWidgetManager;

    .line 126
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dt:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dw:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setupAlert()V

    .line 129
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iput v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 98
    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->du:Landroid/content/ComponentName;

    .line 99
    iput-object v5, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dv:Ljava/lang/String;

    .line 100
    const-string v0, "BIND_APPWIDGET"

    const-string v1, "Error getting parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, v4}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->dx:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 81
    return-void
.end method
