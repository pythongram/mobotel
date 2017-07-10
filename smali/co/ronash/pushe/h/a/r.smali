.class public Lco/ronash/pushe/h/a/r;
.super Lco/ronash/pushe/h/a/k;


# static fields
.field public static final a:Lco/ronash/pushe/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lco/ronash/pushe/a/c;->b:Lco/ronash/pushe/a/c;

    sput-object v0, Lco/ronash/pushe/h/a/r;->a:Lco/ronash/pushe/a/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .registers 3

    invoke-static {p0, p1}, Lco/ronash/pushe/h/a/r;->b(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;
    .registers 7

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Lco/ronash/pushe/k/d;->size()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v3

    const-string v4, "btn_action"

    invoke-virtual {v3, v4}, Lco/ronash/pushe/k/l;->e(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v4

    const-string v5, "action_type"

    invoke-virtual {v4, v5, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lco/ronash/pushe/a/c;->a(Ljava/lang/String;)Lco/ronash/pushe/a/c;

    move-result-object v4

    sget-object v5, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    if-eq v4, v5, :cond_2c

    invoke-virtual {v2, v3}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2f
    move-object v0, v2

    goto :goto_4
.end method

.method private static b(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    const-string v1, "action_type"

    invoke-virtual {p0, v1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/a/c;->a(Ljava/lang/String;)Lco/ronash/pushe/a/c;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v0, Lco/ronash/pushe/h/a/r;->a:Lco/ronash/pushe/a/c;

    :cond_12
    invoke-virtual {v0}, Lco/ronash/pushe/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_c2

    const-string v1, "d_title"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    const-string v1, "d_content"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    const-string v1, "d_title"

    const-string v2, "d_title"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_big_title"

    const-string v2, "d_big_title"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_content"

    const-string v2, "d_content"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_big_content"

    const-string v2, "d_big_content"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_summary"

    const-string v2, "d_summary"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_image"

    const-string v2, "d_image"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_icon"

    const-string v2, "d_icon"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d_big_icon"

    const-string v2, "d_big_icon"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    const-string v1, "dialog_in1"

    const-string v2, "dialog_in1"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dialog_in2"

    const-string v2, "dialog_in2"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orig_msg_id"

    const-string v2, "message_id"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    if-ne v0, v1, :cond_136

    const-string v1, "d_buttons"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v1

    if-eqz v1, :cond_126

    const-string v1, "d_buttons"

    const-string v2, "d_buttons"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-static {v2}, Lco/ronash/pushe/h/a/r;->a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    :cond_c2
    :goto_c2
    invoke-virtual {v0}, Lco/ronash/pushe/a/c;->b()Lco/ronash/pushe/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/ronash/pushe/a/b;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v0

    goto/16 :goto_3

    :cond_cc
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "big_title"

    const-string v2, "big_title"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "big_content"

    const-string v2, "big_content"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    const-string v2, "summary"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image"

    const-string v2, "image"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "icon"

    const-string v2, "icon"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "big_icon"

    const-string v2, "big_icon"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    :cond_126
    const-string v1, "buttons"

    const-string v2, "buttons"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-static {v2}, Lco/ronash/pushe/h/a/r;->a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_c2

    :cond_136
    const-string v1, "buttons"

    const-string v2, "buttons"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_c2
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lco/ronash/pushe/h/a/p;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/p;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/a/r;->a(Lco/ronash/pushe/h/a/i;Lco/ronash/pushe/k/l;)V

    const-string v1, "title"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->b(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->c(Ljava/lang/String;)V

    const-string v1, "big_title"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->d(Ljava/lang/String;)V

    const-string v1, "big_content"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->e(Ljava/lang/String;)V

    const-string v1, "summary"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_47
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->e(Ljava/lang/String;)V

    :cond_4e
    :try_start_4e
    const-string v1, "priority"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->a(I)V
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_5b} :catch_134

    :goto_5b
    const-string v1, "image"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->g(Ljava/lang/String;)V

    const-string v1, "icon"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->h(Ljava/lang/String;)V

    const-string v1, "big_icon"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->i(Ljava/lang/String;)V

    const-string v1, "use_pushe_mini_icon"

    const-string v2, "false"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->b(Z)V

    const-string v1, "action"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-static {v1, p1}, Lco/ronash/pushe/h/a/r;->b(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->a(Lco/ronash/pushe/a/a;)V

    :try_start_92
    const-string v1, "led_color"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->b(I)V
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_9f} :catch_13b

    :goto_9f
    :try_start_9f
    const-string v1, "led_off"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->c(I)V
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_ac} :catch_141

    :goto_ac
    :try_start_ac
    const-string v1, "led_on"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->d(I)V
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b9} :catch_149

    :goto_b9
    const-string v1, "wake_screen"

    const-string v2, "false"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->c(Z)V

    const-string v1, "ticker"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->j(Ljava/lang/String;)V

    const-string v1, "custom_content"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->a(Lco/ronash/pushe/k/l;)V

    const-string v1, "show_app"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->d(Z)V

    const-string v1, "notif_icon"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->m(Ljava/lang/String;)V

    const-string v1, "permanent"

    invoke-virtual {p1, v1, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->e(Z)V

    const-string v1, "bg_url"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->l(Ljava/lang/String;)V

    const-string v1, "force_publish"

    invoke-virtual {p1, v1, v4}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->f(Z)V

    const-string v1, "buttons"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v1

    if-eqz v1, :cond_128

    new-instance v2, Lco/ronash/pushe/h/a/t;

    invoke-direct {v2}, Lco/ronash/pushe/h/a/t;-><init>()V

    invoke-virtual {v2, p1, v1}, Lco/ronash/pushe/h/a/t;->a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/d;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/p;->m()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/h/a/s;

    invoke-direct {v2, p0}, Lco/ronash/pushe/h/a/s;-><init>(Lco/ronash/pushe/h/a/r;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_128
    const-string v1, "sound_url"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->k(Ljava/lang/String;)V

    return-object v0

    :catch_134
    move-exception v1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->a(I)V

    goto/16 :goto_5b

    :catch_13b
    move-exception v1

    invoke-virtual {v0, v4}, Lco/ronash/pushe/h/a/p;->b(I)V

    goto/16 :goto_9f

    :catch_141
    move-exception v1

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->b(I)V

    goto/16 :goto_ac

    :catch_149
    move-exception v1

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/p;->b(I)V

    goto/16 :goto_b9
.end method
