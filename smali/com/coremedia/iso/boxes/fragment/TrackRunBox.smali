.class public Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackRunBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "trun"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private dataOffset:I

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 142
    const-string v0, "trun"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    .line 143
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "TrackRunBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getEntries"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x39

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setDataOffset"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "int"

    const-string v5, "dataOffset"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setDataOffsetPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "boolean"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x10b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setSampleSizePresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "boolean"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x113

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setSampleDurationPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "boolean"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x11b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setSampleFlagsPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "boolean"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x124

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setSampleCompositionTimeOffsetPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "boolean"

    const-string v5, "v"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getDataOffset"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x135

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getFirstSampleFlags"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "com.coremedia.iso.boxes.fragment.SampleFlags"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x139

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setFirstSampleFlags"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "com.coremedia.iso.boxes.fragment.SampleFlags"

    const-string v5, "firstSampleFlags"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x13d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x147

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setEntries"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, "java.util.List"

    const-string v5, "entries"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x156

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getSampleCompositionTimeOffsets"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "[J"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getSampleCount"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xee

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isDataOffsetPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf2

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isFirstSampleFlagsPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isSampleSizePresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xfb

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isSampleDurationPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isSampleFlagsPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x103

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isSampleCompositionTimeOffsetPresent"

    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x107

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 208
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 210
    .local v2, "sampleCount":J
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    .line 211
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    iput v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    .line 215
    :goto_1a
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2a

    .line 216
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 219
    :cond_2a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    int-to-long v4, v1

    cmp-long v4, v4, v2

    if-ltz v4, :cond_35

    .line 236
    return-void

    .line 213
    .end local v1    # "i":I
    :cond_31
    const/4 v4, -0x1

    iput v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    goto :goto_1a

    .line 220
    .restart local v1    # "i":I
    :cond_35
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 221
    .local v0, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_4b

    .line 222
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$4(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)V

    .line 224
    :cond_4b
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_5c

    .line 225
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$5(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)V

    .line 227
    :cond_5c
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_6e

    .line 228
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0, v4}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$6(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 230
    :cond_6e
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_80

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$7(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)V

    .line 233
    :cond_80
    iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 175
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 176
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v1

    .line 178
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 179
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 181
    :cond_1c
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    .line 182
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v2, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    .line 185
    :cond_26
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_33

    .line 203
    return-void

    .line 185
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 186
    .local v0, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_46

    .line 187
    # getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$0(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 189
    :cond_46
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_53

    .line 190
    # getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$1(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 192
    :cond_53
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_60

    .line 193
    # getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$2(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getContent(Ljava/nio/ByteBuffer;)V

    .line 195
    :cond_60
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_2c

    .line 196
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getVersion()I

    move-result v3

    if-nez v3, :cond_74

    .line 197
    # getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$3(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_2c

    .line 199
    :cond_74
    # getter for: Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:J
    invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->access$3(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2c
.end method

.method protected getContentSize()J
    .registers 11

    .prologue
    const-wide/16 v8, 0x4

    .line 146
    const-wide/16 v4, 0x8

    .line 147
    .local v4, "size":J
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v2

    .line 149
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-ne v3, v6, :cond_e

    .line 150
    add-long/2addr v4, v8

    .line 152
    :cond_e
    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_14

    .line 153
    add-long/2addr v4, v8

    .line 156
    :cond_14
    const-wide/16 v0, 0x0

    .line 157
    .local v0, "entrySize":J
    and-int/lit16 v3, v2, 0x100

    const/16 v6, 0x100

    if-ne v3, v6, :cond_1d

    .line 158
    add-long/2addr v0, v8

    .line 160
    :cond_1d
    and-int/lit16 v3, v2, 0x200

    const/16 v6, 0x200

    if-ne v3, v6, :cond_24

    .line 161
    add-long/2addr v0, v8

    .line 163
    :cond_24
    and-int/lit16 v3, v2, 0x400

    const/16 v6, 0x400

    if-ne v3, v6, :cond_2b

    .line 164
    add-long/2addr v0, v8

    .line 166
    :cond_2b
    and-int/lit16 v3, v2, 0x800

    const/16 v6, 0x800

    if-ne v3, v6, :cond_32

    .line 167
    add-long/2addr v0, v8

    .line 169
    :cond_32
    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 170
    return-wide v4
.end method

.method public getDataOffset()I
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_15:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_16:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 314
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object v0
.end method

.method public getSampleCompositionTimeOffsets()[J
    .registers 5

    .prologue
    sget-object v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 130
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 131
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 133
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    array-length v2, v1

    if-lt v0, v2, :cond_20

    .line 138
    .end local v0    # "i":I
    .end local v1    # "result":[J
    :goto_1f
    return-object v1

    .line 134
    .restart local v0    # "i":I
    .restart local v1    # "result":[J
    :cond_20
    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 138
    .end local v0    # "i":I
    .end local v1    # "result":[J
    :cond_31
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public getSampleCount()J
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDataOffsetPresent()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    sget-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 243
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isFirstSampleFlagsPresent()Z
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isSampleCompositionTimeOffsetPresent()Z
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_9:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isSampleDurationPresent()Z
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isSampleFlagsPresent()Z
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_8:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public isSampleSizePresent()Z
    .registers 3

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setDataOffset(I)V
    .registers 4
    .param p1, "dataOffset"    # I

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    .line 122
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffffe

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 126
    :goto_1f
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    .line 127
    return-void

    .line 124
    :cond_22
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1f
.end method

.method public setDataOffsetPresent(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_10:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_1d

    .line 269
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 273
    :goto_1c
    return-void

    .line 271
    :cond_1d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffffe

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1c
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 4
    .param p1, "entries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_19:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 343
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    .line 344
    return-void
.end method

.method public setFirstSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V
    .registers 4
    .param p1, "firstSampleFlags"    # Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_17:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 318
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    if-nez p1, :cond_1d

    .line 319
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffffb

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 323
    :goto_1a
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 324
    return-void

    .line 321
    :cond_1d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1a
.end method

.method public setSampleCompositionTimeOffsetPresent(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_14:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_1d

    .line 302
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x800

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 307
    :goto_1c
    return-void

    .line 304
    :cond_1d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfff7ff

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1c
.end method

.method public setSampleDurationPresent(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_12:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 285
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_1d

    .line 286
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 290
    :goto_1c
    return-void

    .line 288
    :cond_1d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffeff

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1c
.end method

.method public setSampleFlagsPresent(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_13:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 293
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_1d

    .line 294
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 298
    :goto_1c
    return-void

    .line 296
    :cond_1d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffbff

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1c
.end method

.method public setSampleSizePresent(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_11:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 276
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_1d

    .line 277
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    .line 281
    :goto_1c
    return-void

    .line 279
    :cond_1d
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I

    move-result v0

    const v1, 0xfffdff

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    sget-object v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->ajc$tjp_18:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 328
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TrackRunBox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v1, "{sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, ", dataOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ", dataOffsetPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isDataOffsetPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", sampleSizePresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ", sampleDurationPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, ", sampleFlagsPresentPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", sampleCompositionTimeOffsetPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, ", firstSampleFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
