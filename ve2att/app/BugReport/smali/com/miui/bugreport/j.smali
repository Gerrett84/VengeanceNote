.class public Lcom/miui/bugreport/j;
.super Ljava/lang/Object;
.source "UserFeedbackReportAdapter.java"


# instance fields
.field public A:I

.field public B:Lcom/miui/bugreport/UserFeedbackReport;

.field public image:Landroid/graphics/Bitmap;

.field public y:I

.field public z:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/miui/bugreport/j;-><init>(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/reflect/Field;II)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/reflect/Field;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p3, p0, Lcom/miui/bugreport/j;->A:I

    .line 193
    iput-object p1, p0, Lcom/miui/bugreport/j;->B:Lcom/miui/bugreport/UserFeedbackReport;

    .line 194
    iput-object p2, p0, Lcom/miui/bugreport/j;->z:Ljava/lang/reflect/Field;

    .line 195
    iput p4, p0, Lcom/miui/bugreport/j;->y:I

    .line 196
    iput-object v2, p0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;

    .line 197
    if-eqz p2, :cond_0

    const v0, 0x7f040023

    if-ne p3, v0, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 201
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 203
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 207
    iput-object v2, p0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 210
    iput-object v2, p0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 211
    :catch_2
    move-exception v0

    .line 212
    iput-object v2, p0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method i()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/bugreport/j;->B:Lcom/miui/bugreport/UserFeedbackReport;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/bugreport/j;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
