.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsUrl"
.end annotation


# instance fields
.field public final audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public final format:Lorg/telegram/messenger/exoplayer2/Format;

.field public final name:Ljava/lang/String;

.field public final textFormats:[Lorg/telegram/messenger/exoplayer2/Format;

.field public final url:Ljava/lang/String;

.field public final videoFormat:Lorg/telegram/messenger/exoplayer2/Format;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "videoFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "audioFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p6, "textFormats"    # [Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 52
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 53
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 54
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->textFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 55
    return-void
.end method

.method public static createMediaPlaylistHlsUrl(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .registers 8
    .param p0, "baseUri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "0"

    const-string v2, "application/x-mpegURL"

    const/4 v4, -0x1

    invoke-static {v0, v2, v1, v1, v4}, Lorg/telegram/messenger/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    .line 44
    .local v3, "format":Lorg/telegram/messenger/exoplayer2/Format;
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object v2, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v0
.end method
