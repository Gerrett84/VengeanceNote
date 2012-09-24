.class Lcom/android/settings/j;
.super Landroid/database/ContentObserver;
.source "BaseEnabler.java"


# instance fields
.field final synthetic aP:Lcom/android/settings/cv;


# direct methods
.method constructor <init>(Lcom/android/settings/cv;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/settings/j;->aP:Lcom/android/settings/cv;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/settings/j;->aP:Lcom/android/settings/cv;

    iget-object v0, v0, Lcom/android/settings/cv;->cM:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/settings/j;->aP:Lcom/android/settings/cv;

    invoke-virtual {v0}, Lcom/android/settings/cv;->update()V

    .line 19
    iget-object v0, p0, Lcom/android/settings/j;->aP:Lcom/android/settings/cv;

    iget-object v0, v0, Lcom/android/settings/cv;->cM:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/j;->aP:Lcom/android/settings/cv;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    return-void
.end method
