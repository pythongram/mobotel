.class public Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;
.super Lcom/koushikdutta/ion/bitmap/ReferenceHashtable;
.source "SoftReferenceHashtable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/ion/bitmap/ReferenceHashtable",
        "<TK;TV;",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    .local p0, "this":Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;, "Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable<TK;TV;>;"
    invoke-direct {p0}, Lcom/koushikdutta/ion/bitmap/ReferenceHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5
    .local p0, "this":Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;, "Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->create(Ljava/lang/Object;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/lang/Object;)Ljava/lang/ref/SoftReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/ref/SoftReference",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;, "Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
