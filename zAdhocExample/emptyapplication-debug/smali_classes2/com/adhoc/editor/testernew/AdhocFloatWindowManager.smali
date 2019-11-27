.class public Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;
.super Ljava/lang/Object;
.source "AdhocFloatWindowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdhocFloatWindowManager"


# instance fields
.field private mAdded:Z

.field private mContext:Landroid/content/Context;

.field mCurrentX:I

.field mCurrentY:I

.field private mFloatView:Landroid/widget/ImageView;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mTouchSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;

    invoke-direct {v1, p0}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$1;-><init>(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)V

    iput-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 74
    iput-object p1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mTouchSlop:I

    .line 77
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 78
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mCurrentX:I

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mCurrentY:I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;

    .prologue
    .line 22
    iget v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$300(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;Ljava/lang/ref/WeakReference;)V
    .registers 2
    .param p0, "x0"    # Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->toDebugActivity(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private createView(Landroid/app/Activity;)Landroid/view/View;
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    if-nez v1, :cond_22

    .line 128
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    .line 129
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    const-string v2, "adhoc_float"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    sget v2, Lcom/adhoc/abtestlite/R$mipmap;->adhoc:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    :cond_22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 134
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    new-instance v2, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;

    invoke-direct {v2, p0, v0}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager$2;-><init>(Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    return-object v1
.end method

.method private createWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 123
    iget-object v0, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private createWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 145
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 146
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 147
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 148
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 150
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 151
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 152
    iget v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mCurrentX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 153
    iget v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mCurrentY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 154
    return-object v0
.end method

.method private toDebugActivity(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 159
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_9

    .line 164
    :goto_8
    return-void

    .line 162
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    if-nez p1, :cond_3

    .line 101
    :cond_2
    :goto_2
    return-void

    .line 86
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "className":Ljava/lang/String;
    const-class v2, Lcom/adhoc/editor/testernew/DebugActivityAdhoc;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    const-class v2, Lcom/adhoc/editor/testernew/CaptureActivityAdhoc;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    invoke-direct {p0, p1}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->createWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->createView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->createWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mAdded:Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_35} :catch_36

    goto :goto_2

    .line 97
    .end local v0    # "className":Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 98
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public remove(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    if-nez p1, :cond_3

    .line 118
    :cond_2
    :goto_2
    return-void

    .line 108
    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mAdded:Z

    if-eqz v1, :cond_2

    .line 111
    invoke-direct {p0, p1}, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->createWindowManager(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mFloatView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adhoc/editor/testernew/AdhocFloatWindowManager;->mAdded:Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_17

    goto :goto_2

    .line 114
    :catch_17
    move-exception v0

    .line 115
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/adhoc/editor/testernew/AdhocT;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
