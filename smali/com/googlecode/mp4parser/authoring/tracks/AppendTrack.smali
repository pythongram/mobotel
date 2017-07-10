.class public Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AppendTrack.java"


# static fields
.field private static LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field tracks:[Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/mp4parser/authoring/Track;)V
    .registers 9
    .param p1, "tracks"    # [Lcom/googlecode/mp4parser/authoring/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->appendTracknames([Lcom/googlecode/mp4parser/authoring/Track;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .line 59
    array-length v4, p1

    move v2, v3

    :goto_c
    if-lt v2, v4, :cond_f

    .line 69
    return-void

    .line 59
    :cond_f
    aget-object v0, p1, v2

    .line 61
    .local v0, "track":Lcom/googlecode/mp4parser/authoring/Track;
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    if-nez v1, :cond_35

    .line 62
    new-instance v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 63
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v1

    const-class v6, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {v1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v5, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 59
    :goto_31
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 65
    :cond_35
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeStsds(Lcom/coremedia/iso/boxes/SampleDescriptionBox;Lcom/coremedia/iso/boxes/SampleDescriptionBox;)Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    goto :goto_31
.end method

.method public static varargs appendTracknames([Lcom/googlecode/mp4parser/authoring/Track;)Ljava/lang/String;
    .registers 8
    .param p0, "tracks"    # [Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    const/4 v3, 0x0

    .line 48
    const-string v0, ""

    .line 49
    .local v0, "name":Ljava/lang/String;
    array-length v4, p0

    move v2, v3

    :goto_5
    if-lt v2, v4, :cond_12

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 49
    :cond_12
    aget-object v1, p0, v2

    .line 50
    .local v1, "track":Lcom/googlecode/mp4parser/authoring/Track;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .registers 21
    .param p1, "ase1"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .param p2, "ase2"    # Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .prologue
    .line 193
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, "ase":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_fb

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerFrame(J)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_104

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerPacket(J)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_106

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerSample(J)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v14

    if-ne v13, v14, :cond_10f

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v14

    if-ne v13, v14, :cond_111

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setPacketSize(I)V

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v14

    if-ne v13, v14, :cond_11a

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setCompressionId(I)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_11c

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v14

    if-ne v13, v14, :cond_11e

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_120

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSamplesPerPacket(J)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v14

    if-ne v13, v14, :cond_122

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion(I)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_124

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion2Data([B)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_fa

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 254
    .local v5, "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 255
    .local v6, "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_f4
    :goto_f4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_126

    .line 280
    .end local v2    # "ase":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .end local v5    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v6    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_fa
    :goto_fa
    return-object v2

    .line 197
    .restart local v2    # "ase":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    :cond_fb
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v14, "BytesPerFrame differ"

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x0

    goto :goto_fa

    .line 203
    :cond_104
    const/4 v2, 0x0

    goto :goto_fa

    .line 208
    :cond_106
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v14, "BytesPerSample differ"

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    goto :goto_fa

    .line 214
    :cond_10f
    const/4 v2, 0x0

    goto :goto_fa

    .line 219
    :cond_111
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v14, "ChannelCount differ"

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    goto :goto_fa

    .line 225
    :cond_11a
    const/4 v2, 0x0

    goto :goto_fa

    .line 230
    :cond_11c
    const/4 v2, 0x0

    goto :goto_fa

    .line 235
    :cond_11e
    const/4 v2, 0x0

    goto :goto_fa

    .line 240
    :cond_120
    const/4 v2, 0x0

    goto :goto_fa

    .line 245
    :cond_122
    const/4 v2, 0x0

    goto :goto_fa

    .line 250
    :cond_124
    const/4 v2, 0x0

    goto :goto_fa

    .line 256
    .restart local v5    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v6    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_126
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/Box;

    .line 257
    .local v7, "cur1":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/Box;

    .line 258
    .local v8, "cur2":Lcom/coremedia/iso/boxes/Box;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v3, "baos1":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v4, "baos2":Ljava/io/ByteArrayOutputStream;
    :try_start_13c
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v13

    invoke-interface {v7, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 262
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v13

    invoke-interface {v8, v13}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14a} :catch_15c

    .line 267
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_168

    .line 268
    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_f4

    .line 263
    :catch_15c
    move-exception v9

    .line 264
    .local v9, "e":Ljava/io/IOException;
    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/mp4parser/util/Logger;->logWarn(Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x0

    goto :goto_fa

    .line 270
    .end local v9    # "e":Ljava/io/IOException;
    :cond_168
    const-string v13, "esds"

    invoke-interface {v7}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f4

    const-string v13, "esds"

    invoke-interface {v8}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f4

    move-object v11, v7

    .line 271
    check-cast v11, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .local v11, "esdsBox1":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    move-object v12, v8

    .line 272
    check-cast v12, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 273
    .local v12, "esdsBox2":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    invoke-virtual {v11}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v13

    invoke-virtual {v12}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeDescriptors(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v10

    .line 274
    .local v10, "esd":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    invoke-virtual {v11, v10}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)V

    .line 275
    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_f4
.end method

.method private mergeDescriptors(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .registers 13
    .param p1, "des1"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    .param p2, "des2"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    .prologue
    const/4 v4, 0x0

    .line 286
    instance-of v5, p1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    if-eqz v5, :cond_18f

    instance-of v5, p2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    if-eqz v5, :cond_18f

    move-object v2, p1

    .line 287
    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    .local v2, "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    move-object v3, p2

    .line 288
    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    .line 289
    .local v3, "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v6

    if-eq v5, v6, :cond_1b

    move-object v2, v4

    .line 364
    .end local v2    # "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v3    # "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    :cond_1a
    :goto_1a
    return-object v2

    .line 292
    .restart local v2    # "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .restart local v3    # "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    :cond_1b
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    .line 295
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v6

    if-eq v5, v6, :cond_2d

    move-object v2, v4

    .line 296
    goto :goto_1a

    .line 298
    :cond_2d
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v6

    if-eq v5, v6, :cond_39

    move-object v2, v4

    .line 299
    goto :goto_1a

    .line 301
    :cond_39
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v6

    if-eq v5, v6, :cond_45

    move-object v2, v4

    .line 302
    goto :goto_1a

    .line 304
    :cond_45
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v6

    if-eq v5, v6, :cond_51

    move-object v2, v4

    .line 305
    goto :goto_1a

    .line 307
    :cond_51
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v6

    if-eq v5, v6, :cond_5d

    move-object v2, v4

    .line 308
    goto :goto_1a

    .line 310
    :cond_5d
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v6

    if-eq v5, v6, :cond_69

    move-object v2, v4

    .line 311
    goto :goto_1a

    .line 313
    :cond_69
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    .line 316
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b9

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    :goto_80
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_bd

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 320
    :cond_94
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v0

    .line 321
    .local v0, "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v1

    .line 323
    .local v1, "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v5

    if-eqz v5, :cond_da

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v5

    if-eqz v5, :cond_da

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_da

    move-object v2, v4

    .line 324
    goto/16 :goto_1a

    .line 316
    .end local v0    # "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v1    # "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_b9
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    goto :goto_80

    .line 319
    :cond_bd
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    if-nez v5, :cond_94

    .line 355
    :cond_c3
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16b

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_171

    :cond_d7
    move-object v2, v4

    .line 356
    goto/16 :goto_1a

    .line 326
    .restart local v0    # "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .restart local v1    # "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_da
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f5

    .line 327
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 329
    :cond_f5
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    .line 333
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v5

    if-eqz v5, :cond_112

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_118

    :cond_10f
    move-object v2, v4

    .line 334
    goto/16 :goto_1a

    .line 333
    :cond_112
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v5

    if-nez v5, :cond_10f

    .line 337
    :cond_118
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_133

    .line 338
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 340
    :cond_133
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_144

    move-object v2, v4

    .line 341
    goto/16 :goto_1a

    .line 344
    :cond_144
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v6

    if-eq v5, v6, :cond_151

    move-object v2, v4

    .line 345
    goto/16 :goto_1a

    .line 347
    :cond_151
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v6

    if-eq v5, v6, :cond_15e

    move-object v2, v4

    .line 348
    goto/16 :goto_1a

    .line 350
    :cond_15e
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v5

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v6

    if-eq v5, v6, :cond_c3

    move-object v2, v4

    .line 351
    goto/16 :goto_1a

    .line 355
    .end local v0    # "dcd1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    .end local v1    # "dcd2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    :cond_16b
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_d7

    .line 358
    :cond_171
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_188

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :goto_185
    move-object v2, v4

    .line 359
    goto/16 :goto_1a

    .line 358
    :cond_188
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_1a

    goto :goto_185

    .line 363
    .end local v2    # "esds1":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .end local v3    # "esds2":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    :cond_18f
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v6, "I can only merge ESDescriptors"

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    move-object v2, v4

    .line 364
    goto/16 :goto_1a
.end method

.method private mergeSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .registers 6
    .param p1, "se1"    # Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .param p2, "se2"    # Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-interface {p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 109
    .end local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .end local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_f
    :goto_f
    return-object v0

    .line 104
    .restart local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .restart local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_10
    instance-of v1, p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    if-eqz v1, :cond_21

    instance-of v1, p2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    if-eqz v1, :cond_21

    .line 105
    check-cast p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .end local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    check-cast p2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .end local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeVisualSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    move-result-object v0

    goto :goto_f

    .line 106
    .restart local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .restart local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_21
    instance-of v1, p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v1, :cond_f

    instance-of v1, p2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v1, :cond_f

    .line 107
    check-cast p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .end local p1    # "se1":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    check-cast p2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .end local p2    # "se2":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-result-object v0

    goto :goto_f
.end method

.method private mergeStsds(Lcom/coremedia/iso/boxes/SampleDescriptionBox;Lcom/coremedia/iso/boxes/SampleDescriptionBox;)Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 13
    .param p1, "stsd1"    # Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .param p2, "stsd2"    # Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v1, "curBaos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v4, "refBaos":Ljava/io/ByteArrayOutputStream;
    :try_start_b
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 82
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_4d

    .line 87
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 88
    .local v0, "cur":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 90
    .local v3, "ref":[B
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 91
    const-class v6, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    const-class v7, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p2, v7}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-direct {p0, v6, v7}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v5

    .line 92
    .local v5, "se":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    if-eqz v5, :cond_59

    .line 93
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->setBoxes(Ljava/util/List;)V

    .line 98
    .end local v0    # "cur":[B
    .end local v3    # "ref":[B
    .end local v5    # "se":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .end local p1    # "stsd1":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    :cond_4c
    :goto_4c
    return-object p1

    .line 83
    .restart local p1    # "stsd1":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    :catch_4d
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 85
    const/4 p1, 0x0

    goto :goto_4c

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cur":[B
    .restart local v3    # "ref":[B
    .restart local v5    # "se":Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    :cond_59
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot merge "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p1, v8}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    invoke-virtual {p2, v8}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private mergeVisualSampleEntry(Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    .registers 17
    .param p1, "vse1"    # Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    .param p2, "vse2"    # Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    .prologue
    .line 114
    new-instance v8, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>()V

    .line 115
    .local v8, "vse":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_b2

    .line 116
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 121
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getCompressorname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v10

    if-ne v9, v10, :cond_bb

    .line 123
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getDepth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 129
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v10

    if-ne v9, v10, :cond_c4

    .line 130
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getFrameCount()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 136
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_cd

    .line 137
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 142
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_d6

    .line 143
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 149
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_df

    .line 150
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getVertresolution()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 156
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v12

    cmpl-double v9, v10, v12

    if-nez v9, :cond_e8

    .line 157
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHorizresolution()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 163
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_b1

    .line 164
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 165
    .local v2, "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 166
    .local v3, "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_ab
    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_f1

    .line 189
    .end local v2    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v3    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v8    # "vse":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_b1
    :goto_b1
    return-object v8

    .line 118
    .restart local v8    # "vse":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_b2
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "Horizontal Resolution differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 119
    const/4 v8, 0x0

    goto :goto_b1

    .line 125
    :cond_bb
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "Depth differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 126
    const/4 v8, 0x0

    goto :goto_b1

    .line 132
    :cond_c4
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "frame count differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 133
    const/4 v8, 0x0

    goto :goto_b1

    .line 139
    :cond_cd
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "height differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 140
    const/4 v8, 0x0

    goto :goto_b1

    .line 145
    :cond_d6
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "width differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 146
    const/4 v8, 0x0

    goto :goto_b1

    .line 152
    :cond_df
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "vert resolution differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 153
    const/4 v8, 0x0

    goto :goto_b1

    .line 159
    :cond_e8
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v10, "horizontal resolution differs"

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 160
    const/4 v8, 0x0

    goto :goto_b1

    .line 167
    .restart local v2    # "bxs1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v3    # "bxs2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/coremedia/iso/boxes/Box;>;"
    :cond_f1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    .line 168
    .local v4, "cur1":Lcom/coremedia/iso/boxes/Box;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/Box;

    .line 169
    .local v5, "cur2":Lcom/coremedia/iso/boxes/Box;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    .local v0, "baos1":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v1, "baos2":Ljava/io/ByteArrayOutputStream;
    :try_start_107
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 173
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_115} :catch_127

    .line 178
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_134

    .line 179
    invoke-virtual {v8, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_ab

    .line 174
    :catch_127
    move-exception v6

    .line 175
    .local v6, "e":Ljava/io/IOException;
    sget-object v9, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/util/Logger;->logWarn(Ljava/lang/String;)V

    .line 176
    const/4 v8, 0x0

    goto/16 :goto_b1

    .line 181
    .end local v6    # "e":Ljava/io/IOException;
    :cond_134
    instance-of v9, v4, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    if-eqz v9, :cond_ab

    instance-of v9, v5, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    if-eqz v9, :cond_ab

    move-object v9, v4

    .line 182
    check-cast v9, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v9

    check-cast v5, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    .end local v5    # "cur2":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeDescriptors(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v7

    .local v7, "esd":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    move-object v9, v4

    .line 183
    check-cast v9, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;

    invoke-virtual {v9, v7}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->setDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)V

    .line 184
    invoke-virtual {v8, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_ab
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v3, :cond_7

    .line 75
    return-void

    .line 72
    :cond_7
    aget-object v0, v2, v1

    .line 73
    .local v0, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 399
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v6, v6, v8

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7f

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v6, v6, v8

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7f

    .line 400
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 401
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v9, v7

    move v6, v8

    :goto_22
    if-lt v6, v9, :cond_34

    .line 404
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 405
    .local v1, "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_44

    .line 418
    .end local v1    # "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    :goto_33
    return-object v1

    .line 401
    .restart local v4    # "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_34
    aget-object v5, v7, v6

    .line 402
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 405
    .end local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v1    # "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :cond_44
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 406
    .local v3, "list":[I
    array-length v10, v3

    move v7, v8

    :goto_4c
    if-ge v7, v10, :cond_2d

    aget v0, v3, v7

    .line 407
    .local v0, "compositionTime":I
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_62

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v6

    if-eq v6, v0, :cond_6f

    .line 408
    :cond_62
    new-instance v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 409
    .local v2, "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 406
    :goto_6b
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_4c

    .line 411
    .end local v2    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_6f
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 412
    .restart local v2    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_6b

    .line 418
    .end local v0    # "compositionTime":I
    .end local v1    # "compositionTimeEntries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v2    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v3    # "list":[I
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_7f
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public getHandler()Ljava/lang/String;
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 446
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 447
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v4, v3

    :goto_21
    if-lt v2, v4, :cond_24

    .line 452
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    :goto_23
    return-object v0

    .line 447
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    :cond_24
    aget-object v1, v3, v2

    .line 448
    .local v1, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 452
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;>;"
    .end local v1    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_30
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .registers 15

    .prologue
    const/4 v8, 0x0

    .line 383
    monitor-enter p0

    const/4 v3, 0x0

    .line 384
    .local v3, "numSamples":I
    :try_start_3
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v10, v9

    move v7, v8

    :goto_7
    if-lt v7, v10, :cond_14

    .line 387
    new-array v0, v3, [J

    .line 388
    .local v0, "decodingTimes":[J
    const/4 v1, 0x0

    .line 390
    .local v1, "index":I
    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v11, v10
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_38

    move v7, v8

    :goto_10
    if-lt v7, v11, :cond_1f

    .line 395
    monitor-exit p0

    return-object v0

    .line 384
    .end local v0    # "decodingTimes":[J
    .end local v1    # "index":I
    :cond_14
    :try_start_14
    aget-object v6, v9, v7

    .line 385
    .local v6, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v11

    array-length v11, v11

    add-int/2addr v3, v11

    .line 384
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 390
    .end local v6    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v0    # "decodingTimes":[J
    .restart local v1    # "index":I
    :cond_1f
    aget-object v6, v10, v7

    .line 391
    .restart local v6    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v12

    array-length v13, v12

    move v9, v8

    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_28
    if-lt v9, v13, :cond_2e

    .line 390
    add-int/lit8 v7, v7, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_10

    .line 391
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_2e
    aget-wide v4, v12, v9

    .line 392
    .local v4, "l":J
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput-wide v4, v0, v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_38

    .line 391
    add-int/lit8 v9, v9, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_28

    .line 383
    .end local v0    # "decodingTimes":[J
    .end local v2    # "index":I
    .end local v4    # "l":J
    .end local v6    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :catchall_38
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getSamples()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_9
    if-lt v2, v4, :cond_c

    .line 375
    return-object v0

    .line 371
    :cond_c
    aget-object v1, v3, v2

    .line 372
    .local v1, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .registers 21

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    if-eqz v11, :cond_6b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_6b

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "numSyncSamples":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v13, v12

    const/4 v11, 0x0

    :goto_22
    if-lt v11, v13, :cond_33

    .line 428
    new-array v7, v4, [J

    .line 430
    .local v7, "returnSyncSamples":[J
    const/4 v5, 0x0

    .line 431
    .local v5, "pos":I
    const-wide/16 v8, 0x0

    .line 432
    .local v8, "samplesBefore":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v14, v13

    const/4 v11, 0x0

    move v12, v11

    :goto_30
    if-lt v12, v14, :cond_3e

    .line 440
    .end local v4    # "numSyncSamples":I
    .end local v5    # "pos":I
    .end local v7    # "returnSyncSamples":[J
    .end local v8    # "samplesBefore":J
    :goto_32
    return-object v7

    .line 425
    .restart local v4    # "numSyncSamples":I
    :cond_33
    aget-object v10, v12, v11

    .line 426
    .local v10, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v14

    array-length v14, v14

    add-int/2addr v4, v14

    .line 425
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    .line 432
    .end local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v5    # "pos":I
    .restart local v7    # "returnSyncSamples":[J
    .restart local v8    # "samplesBefore":J
    :cond_3e
    aget-object v10, v13, v12

    .line 433
    .restart local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v11, 0x0

    move v6, v5

    .end local v5    # "pos":I
    .local v6, "pos":I
    :goto_49
    move/from16 v0, v16

    if-lt v11, v0, :cond_5f

    .line 436
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    .line 432
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move v5, v6

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_30

    .line 433
    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    :cond_5f
    aget-wide v2, v15, v11

    .line 434
    .local v2, "l":J
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    add-long v18, v8, v2

    aput-wide v18, v7, v6

    .line 433
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_49

    .line 440
    .end local v2    # "l":J
    .end local v4    # "numSyncSamples":I
    .end local v6    # "pos":I
    .end local v7    # "returnSyncSamples":[J
    .end local v8    # "samplesBefore":J
    .end local v10    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_6b
    const/4 v7, 0x0

    goto :goto_32
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
