.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# instance fields
.field private final jM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 296
    iput-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->jM:Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method public hv()Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 301
    new-instance v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-direct {v3}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;-><init>()V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 303
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->jM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 305
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 306
    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 307
    if-eqz v6, :cond_0

    .line 308
    iget-object v7, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bt:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bt:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->jM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    if-eqz v4, :cond_2

    .line 316
    iget-object v0, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 317
    :goto_1
    if-ge v1, v5, :cond_2

    .line 318
    iget-object v0, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    iput v1, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bu:I

    .line 326
    :cond_2
    iget-object v0, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bt:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iput v2, v3, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bu:I

    .line 330
    :cond_3
    return-object v3

    .line 317
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->hv()Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 337
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 343
    return-void
.end method
