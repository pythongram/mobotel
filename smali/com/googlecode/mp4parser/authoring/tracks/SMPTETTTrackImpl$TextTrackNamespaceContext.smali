.class Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$TextTrackNamespaceContext;
.super Ljava/lang/Object;
.source "SMPTETTTrackImpl.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextTrackNamespaceContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$TextTrackNamespaceContext;)V
    .registers 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$TextTrackNamespaceContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v0, "ttml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 309
    const-string v0, "http://www.w3.org/ns/ttml"

    .line 314
    :goto_a
    return-object v0

    .line 311
    :cond_b
    const-string v0, "smpte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 312
    const-string v0, "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt"

    goto :goto_a

    .line 314
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "http://www.w3.org/ns/ttml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 323
    const-string v0, "ttml"

    .line 328
    :goto_a
    return-object v0

    .line 325
    :cond_b
    const-string v0, "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 326
    const-string v0, "smpte"

    goto :goto_a

    .line 328
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ttml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "smpte"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
