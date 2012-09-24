.class Lcom/android/settings/cx;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# instance fields
.field CG:I

.field CH:I

.field CI:I

.field CJ:I

.field CK:Z

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/settings/cx;->key:Ljava/lang/String;

    .line 147
    iput p2, p0, Lcom/android/settings/cx;->CG:I

    .line 148
    iput p3, p0, Lcom/android/settings/cx;->CH:I

    .line 149
    iput p4, p0, Lcom/android/settings/cx;->CI:I

    .line 150
    iput p5, p0, Lcom/android/settings/cx;->CJ:I

    .line 151
    iput-boolean p6, p0, Lcom/android/settings/cx;->CK:Z

    .line 152
    return-void
.end method
