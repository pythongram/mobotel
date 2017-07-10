.class public Lorg/telegram/ui/Telehgram/Teleh/e/a;
.super Ljava/lang/Object;
.source "a.java"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "var1"    # Ljava/lang/Long;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Teleh/e/a;->b:Ljava/lang/Long;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 3
    .param p1, "var1"    # Ljava/lang/Long;
    .param p2, "var2"    # Ljava/lang/Long;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/Teleh/e/a;->a:Ljava/lang/Long;

    .line 14
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/Teleh/e/a;->b:Ljava/lang/Long;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/Teleh/e/a;->b:Ljava/lang/Long;

    return-object v0
.end method
