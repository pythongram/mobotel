.class Lcom/koushikdutta/async/util/FileCache$1;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/util/FileCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/util/FileCache;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$1;->this$0:Lcom/koushikdutta/async/util/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 232
    .local v0, "l":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 233
    .local v2, "r":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    .line 234
    const/4 v4, -0x1

    .line 237
    :goto_d
    return v4

    .line 235
    :cond_e
    cmp-long v4, v2, v0

    if-lez v4, :cond_14

    .line 236
    const/4 v4, 0x1

    goto :goto_d

    .line 237
    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 228
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
