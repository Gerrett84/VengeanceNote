.class public Lcom/android/settings/deviceinfo/FileItemInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "FileItemInfoLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final uz:I


# instance fields
.field private bc:Landroid/widget/CheckBox;

.field private ux:Landroid/widget/TextView;

.field private uy:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->uz:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->uy:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public fI()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->bc:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->bc:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->ux:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->uy:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->bc:Landroid/widget/CheckBox;

    .line 51
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->bc:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->ux:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->uz:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->bc:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setChecked(Z)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
