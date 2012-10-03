.class public Lcom/miui/bugreport/e;
.super Landroid/widget/BaseAdapter;
.source "UserFeedbackReportAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private p:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/miui/bugreport/e;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p2}, Lcom/miui/bugreport/e;->d(Lcom/miui/bugreport/UserFeedbackReport;)V

    .line 37
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    new-instance v1, Lcom/miui/bugreport/j;

    invoke-direct {v1, p1}, Lcom/miui/bugreport/j;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;II)V

    .line 42
    return-void
.end method

.method private a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    new-instance v2, Lcom/miui/bugreport/j;

    invoke-direct {v2, p1, v0, p3, p4}, Lcom/miui/bugreport/j;-><init>(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/reflect/Field;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private d(Lcom/miui/bugreport/UserFeedbackReport;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    .line 58
    const v0, 0x7f040024

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/bugreport/e;->a(I)V

    .line 59
    iget-object v0, p1, Lcom/miui/bugreport/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "description"

    const v1, 0x7f040021

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 62
    :cond_0
    const-string v0, "timestamp"

    const v1, 0x7f04001e

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;II)V

    .line 63
    const v0, 0x7f040025

    invoke-direct {p0, v0}, Lcom/miui/bugreport/e;->a(I)V

    .line 64
    const-string v0, "networkName"

    const v1, 0x7f040019

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 65
    const v0, 0x7f040026

    invoke-direct {p0, v0}, Lcom/miui/bugreport/e;->a(I)V

    .line 66
    const-string v0, "device"

    const v1, 0x7f040016

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 67
    const-string v0, "buildId"

    const v1, 0x7f040013

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 68
    const-string v0, "buildType"

    const v1, 0x7f040014

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 69
    const-string v0, "model"

    const v1, 0x7f040018

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 70
    const-string v0, "product"

    const v1, 0x7f04001c

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 71
    const-string v0, "release"

    const v1, 0x7f04001d

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 72
    const-string v0, "incremental"

    const v1, 0x7f040017

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 73
    const-string v0, "codename"

    const v1, 0x7f040015

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 74
    const-string v0, "board"

    const v1, 0x7f040011

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 75
    const-string v0, "brand"

    const v1, 0x7f040012

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p1, Lcom/miui/bugreport/UserFeedbackReport;->runningApplications:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/bugreport/UserFeedbackReport;->runningApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const-string v0, "runningApplications"

    const v1, 0x7f040020

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 80
    :cond_1
    iget-object v0, p1, Lcom/miui/bugreport/UserFeedbackReport;->systemLog:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "systemLog"

    const v1, 0x7f040022

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V

    .line 83
    :cond_2
    iget-object v0, p1, Lcom/miui/bugreport/UserFeedbackReport;->screenshot:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 84
    const v0, 0x7f040027

    invoke-direct {p0, v0}, Lcom/miui/bugreport/e;->a(I)V

    .line 85
    const-string v0, "screenshot"

    const v1, 0x7f040023

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/bugreport/e;->a(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_3
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 105
    iget-object v0, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/bugreport/j;

    .line 106
    iget-object v1, p0, Lcom/miui/bugreport/e;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 109
    if-nez p2, :cond_0

    .line 110
    const v2, 0x7f030004

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    const v1, 0x7f06000b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    const v2, 0x7f06000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 117
    const v3, 0x7f06000d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    const v4, 0x7f06000e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 119
    const v5, 0x7f06000f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v0}, Lcom/miui/bugreport/j;->i()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    iget v0, v0, Lcom/miui/bugreport/j;->A:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_0
    return-object p2

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/miui/bugreport/j;->j()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, v0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget v1, v0, Lcom/miui/bugreport/j;->A:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :try_start_0
    iget v1, v0, Lcom/miui/bugreport/j;->y:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 140
    iget-object v1, v0, Lcom/miui/bugreport/j;->z:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/miui/bugreport/j;->B:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/miui/bugreport/e;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/bugreport/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 143
    :cond_3
    :try_start_1
    iget-object v1, v0, Lcom/miui/bugreport/j;->z:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/miui/bugreport/j;->B:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/bugreport/e;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/bugreport/j;

    invoke-virtual {v0}, Lcom/miui/bugreport/j;->i()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/bugreport/j;

    .line 162
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/miui/bugreport/j;->A:I

    const v2, 0x7f040022

    if-ne v1, v2, :cond_0

    .line 164
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/miui/bugreport/j;->z:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/miui/bugreport/j;->B:Lcom/miui/bugreport/UserFeedbackReport;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "text/plain"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/miui/bugreport/e;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 174
    :catch_2
    move-exception v0

    .line 175
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
