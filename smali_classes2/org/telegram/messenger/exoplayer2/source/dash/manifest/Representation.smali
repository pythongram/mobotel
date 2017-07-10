.class public abstract Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;,
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    }
.end annotation


# static fields
.field public static final REVISION_ID_DEFAULT:J = -0x1L


# instance fields
.field public final baseUrl:Ljava/lang/String;

.field public final contentId:Ljava/lang/String;

.field public final format:Lorg/telegram/messenger/exoplayer2/Format;

.field private final initializationUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

.field public final presentationTimeOffsetUs:J

.field public final revisionId:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)V
    .registers 9
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->contentId:Ljava/lang/String;

    .line 110
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->revisionId:J

    .line 111
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 112
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 113
    invoke-virtual {p6, p0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->getInitialization(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->initializationUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    .line 114
    invoke-virtual {p6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;->getPresentationTimeOffsetUs()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$1;)V
    .registers 8
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
    .param p7, "x5"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$1;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .registers 15
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "baseUrl"    # Ljava/lang/String;
    .param p5, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;

    .prologue
    .line 78
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .registers 20
    .param p0, "contentId"    # Ljava/lang/String;
    .param p1, "revisionId"    # J
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "baseUrl"    # Ljava/lang/String;
    .param p5, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
    .param p6, "customCacheKey"    # Ljava/lang/String;

    .prologue
    .line 95
    move-object/from16 v0, p5

    instance-of v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    if-eqz v2, :cond_1a

    .line 96
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object/from16 v8, p5

    check-cast v8, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v10, -0x1

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;J)V

    .line 99
    :goto_19
    return-object v2

    .line 98
    :cond_1a
    move-object/from16 v0, p5

    instance-of v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    if-eqz v2, :cond_30

    .line 99
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;

    move-object/from16 v8, p5

    check-cast v8, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    move-object v3, p0

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;)V

    goto :goto_19

    .line 102
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
.end method

.method public abstract getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public getInitializationUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->initializationUri:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
