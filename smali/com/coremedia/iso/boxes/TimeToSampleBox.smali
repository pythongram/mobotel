.class public Lcom/coremedia/iso/boxes/TimeToSampleBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TimeToSampleBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final TYPE:Ljava/lang/String; = "stts"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;",
            "Ljava/lang/ref/SoftReference",
            "<[J>;>;"
        }
    .end annotation
.end field


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$preClinit()V

    .line 44
    const-class v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->$assertionsDisabled:Z

    .line 126
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->cache:Ljava/util/Map;

    return-void

    .line 44
    :cond_16
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    const-string v0, "stts"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    .line 51
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "TimeToSampleBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getEntries"

    const-string v3, "com.coremedia.iso.boxes.TimeToSampleBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setEntries"

    const-string v3, "com.coremedia.iso.boxes.TimeToSampleBox"

    const-string v4, "java.util.List"

    const-string v5, "entries"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.TimeToSampleBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static declared-synchronized blowupTimeToSamples(Ljava/util/List;)[J
    .registers 19
    .param p0, "entries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 136
    const-class v12, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    monitor-enter v12

    :try_start_3
    sget-object v9, Lcom/coremedia/iso/boxes/TimeToSampleBox;->cache:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .local v2, "cacheEntry":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_19

    .line 138
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_36

    .local v3, "cacheVal":[J
    if-eqz v3, :cond_19

    .line 158
    .end local v3    # "cacheVal":[J
    :goto_17
    monitor-exit v12

    return-object v3

    .line 142
    :cond_19
    const-wide/16 v10, 0x0

    .line 143
    .local v10, "numOfSamples":J
    :try_start_1b
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_39

    .line 146
    sget-boolean v9, Lcom/coremedia/iso/boxes/TimeToSampleBox;->$assertionsDisabled:Z

    if-nez v9, :cond_45

    const-wide/32 v14, 0x7fffffff

    cmp-long v9, v10, v14

    if-lez v9, :cond_45

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_36

    .line 136
    .end local v2    # "cacheEntry":Ljava/lang/ref/SoftReference;
    .end local v10    # "numOfSamples":J
    :catchall_36
    move-exception v9

    monitor-exit v12

    throw v9

    .line 143
    .restart local v2    # "cacheEntry":Ljava/lang/ref/SoftReference;
    .restart local v10    # "numOfSamples":J
    :cond_39
    :try_start_39
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 144
    .local v7, "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v14

    add-long/2addr v10, v14

    goto :goto_1f

    .line 147
    .end local v7    # "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_45
    long-to-int v9, v10

    new-array v6, v9, [J

    .line 149
    .local v6, "decodingTime":[J
    const/4 v4, 0x0

    .line 152
    .local v4, "current":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_61

    .line 157
    sget-object v9, Lcom/coremedia/iso/boxes/TimeToSampleBox;->cache:Ljava/util/Map;

    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-direct {v13, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-interface {v9, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    .line 158
    goto :goto_17

    .line 152
    :cond_61
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 153
    .restart local v7    # "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    const/4 v8, 0x0

    .local v8, "i":I
    move v5, v4

    .end local v4    # "current":I
    .local v5, "current":I
    :goto_69
    int-to-long v14, v8

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-ltz v13, :cond_74

    move v4, v5

    .end local v5    # "current":I
    .restart local v4    # "current":I
    goto :goto_4d

    .line 154
    .end local v4    # "current":I
    .restart local v5    # "current":I
    :cond_74
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "current":I
    .restart local v4    # "current":I
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v14

    aput-wide v14, v6, v5
    :try_end_7c
    .catchall {:try_start_39 .. :try_end_7c} :catchall_36

    .line 153
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4    # "current":I
    .restart local v5    # "current":I
    goto :goto_69
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 60
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    .line 61
    .local v0, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-lt v1, v0, :cond_16

    .line 67
    return-void

    .line 64
    :cond_16
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 72
    iget-object v1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 73
    iget-object v1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 77
    return-void

    .line 73
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 74
    .local v0, "entry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 75
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_13
.end method

.method protected getContentSize()J
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 4
    .param p1, "entries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeToSampleBox[entryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/TimeToSampleBox;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
