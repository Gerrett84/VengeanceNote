.class public Lcom/android/settings/dO;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private ms:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/settings/dO;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/settings/dO;->a(Landroid/widget/Switch;)V

    .line 107
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    :cond_1
    iput-object p1, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    .line 116
    iget-object v0, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/dO;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->q(Landroid/content/Context;)Z

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/dO;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/DreamSettings;->c(Landroid/content/Context;Z)V

    .line 111
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/dO;->ms:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    return-void
.end method
