.class final Lcom/koushikdutta/async/http/Multimap$1;
.super Ljava/lang/Object;
.source "Multimap.java"

# interfaces
.implements Lcom/koushikdutta/async/http/Multimap$StringDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/Multimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
