.class public final Lorg/joda/time/LocalTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "LocalTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1285a21487da7L


# instance fields
.field private transient iField:Lorg/joda/time/DateTimeField;

.field private transient iInstant:Lorg/joda/time/LocalTime;


# direct methods
.method constructor <init>(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeField;)V
    .registers 3

    .prologue
    .line 1370
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1371
    iput-object p1, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    .line 1372
    iput-object p2, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1373
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/LocalTime;

    iput-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    .line 1388
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 1389
    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v1}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1390
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1379
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1380
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1381
    return-void
.end method


# virtual methods
.method public addCopy(I)Lorg/joda/time/LocalTime;
    .registers 6

    .prologue
    .line 1440
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public addCopy(J)Lorg/joda/time/LocalTime;
    .registers 8

    .prologue
    .line 1454
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public addNoWrapToCopy(I)Lorg/joda/time/LocalTime;
    .registers 6

    .prologue
    .line 1470
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 1471
    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v2

    int-to-long v2, v2

    .line 1472
    cmp-long v2, v2, v0

    if-eqz v2, :cond_27

    .line 1473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The addition exceeded the boundaries of LocalTime"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :cond_27
    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/LocalTime;
    .registers 6

    .prologue
    .line 1490
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .registers 2

    .prologue
    .line 1399
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public getLocalTime()Lorg/joda/time/LocalTime;
    .registers 2

    .prologue
    .line 1427
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    return-object v0
.end method

.method protected getMillis()J
    .registers 3

    .prologue
    .line 1408
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeilingCopy()Lorg/joda/time/LocalTime;
    .registers 5

    .prologue
    .line 1585
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public roundFloorCopy()Lorg/joda/time/LocalTime;
    .registers 5

    .prologue
    .line 1571
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfCeilingCopy()Lorg/joda/time/LocalTime;
    .registers 5

    .prologue
    .line 1605
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfEvenCopy()Lorg/joda/time/LocalTime;
    .registers 5

    .prologue
    .line 1616
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfFloorCopy()Lorg/joda/time/LocalTime;
    .registers 5

    .prologue
    .line 1595
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/LocalTime;
    .registers 6

    .prologue
    .line 1504
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/LocalTime;
    .registers 3

    .prologue
    .line 1531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalTime$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/LocalTime;
    .registers 7

    .prologue
    .line 1518
    iget-object v0, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    iget-object v1, p0, Lorg/joda/time/LocalTime$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalTime$Property;->iInstant:Lorg/joda/time/LocalTime;

    invoke-virtual {v2}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/LocalTime;->withLocalMillis(J)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withMaximumValue()Lorg/joda/time/LocalTime;
    .registers 2

    .prologue
    .line 1544
    invoke-virtual {p0}, Lorg/joda/time/LocalTime$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalTime$Property;->setCopy(I)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/LocalTime;
    .registers 2

    .prologue
    .line 1556
    invoke-virtual {p0}, Lorg/joda/time/LocalTime$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalTime$Property;->setCopy(I)Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method
