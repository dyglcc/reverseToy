.class Landroid/arch/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;,
        Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroid/arch/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/arch/lifecycle/ClassesInfoCache;

    invoke-direct {v0}, Landroid/arch/lifecycle/ClassesInfoCache;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ClassesInfoCache;->sInstance:Landroid/arch/lifecycle/ClassesInfoCache;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 17
    .param p1, "klass"    # Ljava/lang/Class;
    .param p2, "declaredMethods"    # [Ljava/lang/reflect/Method;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 104
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 105
    .local v2, "superclass":Ljava/lang/Class;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v3, "handlerToEvent":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v4

    .line 108
    .local v4, "superInfo":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    if-eqz v4, :cond_0

    .line 109
    iget-object v5, v4, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    .end local v4    # "superInfo":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 114
    .local v4, "interfaces":[Ljava/lang/Class;
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 115
    .local v8, "intrfc":Ljava/lang/Class;
    invoke-virtual {v0, v8}, Landroid/arch/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    .line 116
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 115
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 117
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {v0, v3, v11, v12, v1}, Landroid/arch/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 118
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    goto :goto_1

    .line 114
    .end local v8    # "intrfc":Ljava/lang/Class;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 121
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v7, p2

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/arch/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 122
    .local v7, "methods":[Ljava/lang/reflect/Method;
    :goto_2
    const/4 v8, 0x0

    .line 123
    .local v8, "hasLifecycleMethods":Z
    array-length v9, v7

    move v10, v8

    const/4 v8, 0x0

    .line 123
    .end local v8    # "hasLifecycleMethods":Z
    .local v10, "hasLifecycleMethods":Z
    :goto_3
    if-ge v8, v9, :cond_9

    aget-object v11, v7, v8

    .line 124
    .local v11, "method":Ljava/lang/reflect/Method;
    const-class v12, Landroid/arch/lifecycle/OnLifecycleEvent;

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Landroid/arch/lifecycle/OnLifecycleEvent;

    .line 125
    .local v12, "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    if-nez v12, :cond_4

    .line 126
    nop

    .line 123
    move-object/from16 v16, v2

    goto :goto_4

    .line 128
    :cond_4
    const/4 v10, 0x1

    .line 129
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 130
    .local v13, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    .line 131
    .local v14, "callType":I
    array-length v15, v13

    if-lez v15, :cond_5

    .line 132
    const/4 v14, 0x1

    .line 133
    aget-object v15, v13, v6

    const-class v6, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {v15, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 134
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_5
    invoke-interface {v12}, Landroid/arch/lifecycle/OnLifecycleEvent;->value()Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v6

    .line 140
    .local v6, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    array-length v15, v13

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .line 140
    .end local v2    # "superclass":Ljava/lang/Class;
    .local v16, "superclass":Ljava/lang/Class;
    if-le v15, v2, :cond_7

    .line 141
    const/4 v14, 0x2

    .line 142
    aget-object v2, v13, v2

    const-class v15, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid parameter type. second arg must be an event"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_6
    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    if-eq v6, v2, :cond_7

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "Second arg is supported only for ON_ANY value"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_7
    array-length v2, v13

    const/4 v15, 0x2

    if-le v2, v15, :cond_8

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "cannot have more than 2 params"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_8
    new-instance v2, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;

    invoke-direct {v2, v14, v11}, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    .line 155
    .local v2, "methodReference":Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    invoke-direct {v0, v3, v2, v6, v1}, Landroid/arch/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 123
    .end local v2    # "methodReference":Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    .end local v6    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    .end local v13    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v14    # "callType":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    const/4 v6, 0x0

    goto :goto_3

    .line 157
    .end local v16    # "superclass":Ljava/lang/Class;
    .local v2, "superclass":Ljava/lang/Class;
    :cond_9
    move-object/from16 v16, v2

    .line 157
    .end local v2    # "superclass":Ljava/lang/Class;
    .restart local v16    # "superclass":Ljava/lang/Class;
    new-instance v2, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    invoke-direct {v2, v3}, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    .line 158
    .local v2, "info":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    iget-object v6, v0, Landroid/arch/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v6, v0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v2
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "klass"    # Ljava/lang/Class;

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 5
    .param p2, "newHandler"    # Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;
    .param p3, "newEvent"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p4, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 90
    .local p1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 91
    .local v0, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    if-eqz v0, :cond_0

    if-eq p3, v0, :cond_0

    .line 92
    iget-object v1, p2, Landroid/arch/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 93
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    if-nez v0, :cond_1

    .line 99
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 2
    .param p1, "klass"    # Ljava/lang/Class;

    .line 80
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 81
    .local v0, "existing":Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;
    if-eqz v0, :cond_0

    .line 82
    return-object v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/arch/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .locals 6
    .param p1, "klass"    # Ljava/lang/Class;

    .line 45
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 50
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 51
    .local v4, "method":Ljava/lang/reflect/Method;
    const-class v5, Landroid/arch/lifecycle/OnLifecycleEvent;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/arch/lifecycle/OnLifecycleEvent;

    .line 52
    .local v5, "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    if-eqz v5, :cond_1

    .line 59
    invoke-direct {p0, p1, v0}, Landroid/arch/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroid/arch/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 60
    const/4 v1, 0x1

    return v1

    .line 50
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Landroid/arch/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return v2
.end method
