.class public final Lcom/google/common/base/f;
.super Ljava/lang/Object;
.source "Joiner.java"


# instance fields
.field private final vf:Lcom/google/common/base/m;

.field private final vg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/m;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/google/common/base/f;->vf:Lcom/google/common/base/m;

    .line 352
    invoke-static {p2}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/f;->vg:Ljava/lang/String;

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/m;Ljava/lang/String;Lcom/google/common/base/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/f;-><init>(Lcom/google/common/base/m;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-static {p1}, Lcom/google/common/base/c;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 422
    iget-object v1, p0, Lcom/google/common/base/f;->vf:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 423
    iget-object v1, p0, Lcom/google/common/base/f;->vg:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 424
    iget-object v1, p0, Lcom/google/common/base/f;->vf:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 425
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/common/base/f;->vf:Lcom/google/common/base/m;

    invoke-static {v0}, Lcom/google/common/base/m;->a(Lcom/google/common/base/m;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 427
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 428
    iget-object v1, p0, Lcom/google/common/base/f;->vf:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 429
    iget-object v1, p0, Lcom/google/common/base/f;->vg:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 430
    iget-object v1, p0, Lcom/google/common/base/f;->vf:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 433
    :cond_0
    return-object p1
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/f;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 475
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/f;->a(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return-object p1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/f;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
