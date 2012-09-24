.class public final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"


# instance fields
.field public final Bp:Ljava/util/ArrayList;

.field public Bq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bp:Ljava/util/ArrayList;

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->Bq:I

    return-void
.end method
