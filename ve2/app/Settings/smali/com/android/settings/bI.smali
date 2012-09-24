.class Lcom/android/settings/bI;
.super Ljava/lang/Object;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic xA:Lcom/android/settings/AppWidgetPickActivity;

.field xz:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/AppWidgetPickActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/bI;->xA:Lcom/android/settings/AppWidgetPickActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bI;->xz:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/dM;Lcom/android/settings/dM;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/bI;->xz:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/dM;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/dM;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    check-cast p1, Lcom/android/settings/dM;

    check-cast p2, Lcom/android/settings/dM;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bI;->a(Lcom/android/settings/dM;Lcom/android/settings/dM;)I

    move-result v0

    return v0
.end method
